-- Emirates Parks & Gardens: normalized commercial data and first-class seed record.
ALTER TABLE properties
  ADD COLUMN IF NOT EXISTS city text,
  ADD COLUMN IF NOT EXISTS country text DEFAULT 'Nigeria',
  ADD COLUMN IF NOT EXISTS estate_type text,
  ADD COLUMN IF NOT EXISTS developer text,
  ADD COLUMN IF NOT EXISTS initial_deposit bigint,
  ADD COLUMN IF NOT EXISTS sales_status text,
  ADD COLUMN IF NOT EXISTS price_inclusive boolean DEFAULT false,
  ADD COLUMN IF NOT EXISTS price_inclusive_text text,
  ADD COLUMN IF NOT EXISTS published boolean DEFAULT true;

CREATE TABLE IF NOT EXISTS property_plot_options (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  property_id uuid NOT NULL REFERENCES properties(id) ON DELETE CASCADE,
  label text NOT NULL,
  enquiry_key text NOT NULL,
  plot_type text NOT NULL,
  size_sqm int,
  outright_price bigint NOT NULL,
  sort_order int DEFAULT 0,
  is_active boolean DEFAULT true,
  UNIQUE (property_id, enquiry_key)
);

CREATE TABLE IF NOT EXISTS property_payment_plans (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  plot_option_id uuid NOT NULL REFERENCES property_plot_options(id) ON DELETE CASCADE,
  label text NOT NULL,
  duration_months int,
  price bigint NOT NULL,
  sort_order int DEFAULT 0,
  UNIQUE (plot_option_id, label)
);

CREATE TABLE IF NOT EXISTS property_images (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  property_id uuid NOT NULL REFERENCES properties(id) ON DELETE CASCADE,
  image_url text NOT NULL,
  alt_text text,
  media_type text DEFAULT 'site_photo',
  is_primary boolean DEFAULT false,
  sort_order int DEFAULT 0,
  created_at timestamptz DEFAULT now()
);

ALTER TABLE leads ADD COLUMN IF NOT EXISTS plot_option_id uuid REFERENCES property_plot_options(id) ON DELETE SET NULL;
ALTER TABLE leads ADD COLUMN IF NOT EXISTS plot_option_label text;
ALTER TABLE inspection_bookings ADD COLUMN IF NOT EXISTS plot_option_id uuid REFERENCES property_plot_options(id) ON DELETE SET NULL;
ALTER TABLE inspection_bookings ADD COLUMN IF NOT EXISTS plot_option_label text;
ALTER TABLE inspection_bookings ADD COLUMN IF NOT EXISTS property_location text;

CREATE INDEX IF NOT EXISTS idx_plot_options_property ON property_plot_options(property_id);
CREATE INDEX IF NOT EXISTS idx_payment_plans_option ON property_payment_plans(plot_option_id);
CREATE INDEX IF NOT EXISTS idx_property_images_property ON property_images(property_id);

ALTER TABLE property_plot_options ENABLE ROW LEVEL SECURITY;
ALTER TABLE property_payment_plans ENABLE ROW LEVEL SECURITY;
ALTER TABLE property_images ENABLE ROW LEVEL SECURITY;

CREATE POLICY "public_read_plot_options" ON property_plot_options FOR SELECT TO anon, authenticated USING (is_active = true);
CREATE POLICY "public_read_payment_plans" ON property_payment_plans FOR SELECT TO anon, authenticated USING (true);
CREATE POLICY "public_read_property_images" ON property_images FOR SELECT TO anon, authenticated USING (true);
CREATE POLICY "admin_all_plot_options" ON property_plot_options FOR ALL TO authenticated USING (true) WITH CHECK (true);
CREATE POLICY "admin_all_payment_plans" ON property_payment_plans FOR ALL TO authenticated USING (true) WITH CHECK (true);
CREATE POLICY "admin_all_property_images" ON property_images FOR ALL TO authenticated USING (true) WITH CHECK (true);

INSERT INTO locations (name, slug, state, short_description, meta_title, meta_description, sort_order, is_active)
VALUES (
  'Mowe / Ofada', 'mowe-ofada', 'Ogun State',
  'Explore verified land and estate properties in the Mowe-Ofada corridor.',
  'Land and Property for Sale in Mowe-Ofada',
  'Browse verified land and property for sale in Mowe and Ofada, Ogun State, from Lexshield Properties.',
  1, true
)
ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, state = EXCLUDED.state, is_active = true;

INSERT INTO properties (
  id, name, slug, location_id, location_name, city, state, country, property_type,
  estate_type, status, sales_status, developer, featured, price_from, price_display,
  initial_deposit, price_inclusive, price_inclusive_text, description, overview,
  meta_title, meta_description, sort_order, is_active, published
)
VALUES (
  'e8a7e500-0000-4000-8000-000000000001',
  'Emirates Parks & Gardens', 'emirates-parks-gardens-mowe-ofada',
  (SELECT id FROM locations WHERE slug = 'mowe-ofada'),
  'Ewu-Ode, Before Interchange, Mowe-Ofada', 'Mowe-Ofada', 'Ogun State', 'Nigeria',
  'land', 'Residential and Commercial', 'available', 'now_selling',
  'Lexshield Properties Limited', true, 8250000, 'From ₦8.25M', 1000000,
  true, 'All prices inclusive. No hidden charges.',
  'Emirates Parks & Gardens is a landed estate at Ewu-Ode, before the interchange, within the Mowe-Ofada corridor of Ogun State.',
  'Residential 300 SQM and 600 SQM plots and a commercial plot option are currently available with flexible payment plans.',
  'Land for Sale in Mowe-Ofada | Emirates Parks & Gardens',
  'Explore Emirates Parks & Gardens in Mowe-Ofada, Ogun State. 300 SQM from ₦8.25M, 600 SQM from ₦14.5M, flexible payment plans and ₦1M initial deposit. Book a site inspection with Lexshield Properties.',
  1, true, true
)
ON CONFLICT (slug) DO UPDATE SET
  location_id = EXCLUDED.location_id, price_from = EXCLUDED.price_from,
  initial_deposit = EXCLUDED.initial_deposit, featured = true, is_active = true, published = true;

INSERT INTO property_plot_options (id, property_id, label, enquiry_key, plot_type, size_sqm, outright_price, sort_order)
VALUES
  ('e8a7e500-0001-4000-8000-000000000001', 'e8a7e500-0000-4000-8000-000000000001', '300 SQM', '300sqm', 'residential', 300, 8250000, 1),
  ('e8a7e500-0002-4000-8000-000000000001', 'e8a7e500-0000-4000-8000-000000000001', '600 SQM', '600sqm', 'residential', 600, 14500000, 2),
  ('e8a7e500-0003-4000-8000-000000000001', 'e8a7e500-0000-4000-8000-000000000001', 'Commercial Plot', 'commercial', 'commercial', NULL, 20000000, 3)
ON CONFLICT (property_id, enquiry_key) DO UPDATE SET label = EXCLUDED.label, size_sqm = EXCLUDED.size_sqm, outright_price = EXCLUDED.outright_price;

INSERT INTO property_payment_plans (plot_option_id, label, duration_months, price, sort_order)
VALUES
  ('e8a7e500-0001-4000-8000-000000000001', '0–3 Months', 3, 8850000, 1),
  ('e8a7e500-0001-4000-8000-000000000001', '6 Months', 6, 9500000, 2),
  ('e8a7e500-0001-4000-8000-000000000001', '12 Months', 12, 10500000, 3),
  ('e8a7e500-0002-4000-8000-000000000001', '0–3 Months', 3, 15500000, 1),
  ('e8a7e500-0002-4000-8000-000000000001', '6 Months', 6, 16500000, 2),
  ('e8a7e500-0002-4000-8000-000000000001', '12 Months', 12, 18000000, 3),
  ('e8a7e500-0003-4000-8000-000000000001', '0–3 Months', 3, 21000000, 1),
  ('e8a7e500-0003-4000-8000-000000000001', '6 Months', 6, 22000000, 2),
  ('e8a7e500-0003-4000-8000-000000000001', '12 Months', 12, 23000000, 3)
ON CONFLICT (plot_option_id, label) DO UPDATE SET price = EXCLUDED.price, duration_months = EXCLUDED.duration_months;

-- Add the official artwork after uploading it to storage; no unverified media URL is seeded.
