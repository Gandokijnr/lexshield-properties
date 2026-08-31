-- Country Home Estate and reusable fee/amenity architecture.
ALTER TABLE properties ADD COLUMN IF NOT EXISTS last_price_verified_at timestamptz;

CREATE TABLE IF NOT EXISTS property_statutory_fees (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  property_id uuid NOT NULL REFERENCES properties(id) ON DELETE CASCADE,
  label text NOT NULL,
  duration_months int,
  amount bigint NOT NULL,
  sort_order int DEFAULT 0,
  UNIQUE (property_id, label)
);

CREATE TABLE IF NOT EXISTS property_amenities (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  property_id uuid NOT NULL REFERENCES properties(id) ON DELETE CASCADE,
  name text NOT NULL,
  development_status text NOT NULL DEFAULT 'advertised'
    CHECK (development_status IN ('advertised', 'planned', 'under_development', 'completed', 'operational')),
  sort_order int DEFAULT 0,
  UNIQUE (property_id, name)
);

CREATE INDEX IF NOT EXISTS idx_statutory_fees_property ON property_statutory_fees(property_id);
CREATE INDEX IF NOT EXISTS idx_amenities_property ON property_amenities(property_id);
ALTER TABLE property_statutory_fees ENABLE ROW LEVEL SECURITY;
ALTER TABLE property_amenities ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_read_statutory_fees" ON property_statutory_fees FOR SELECT TO anon, authenticated USING (true);
CREATE POLICY "public_read_amenities" ON property_amenities FOR SELECT TO anon, authenticated USING (true);
CREATE POLICY "admin_all_statutory_fees" ON property_statutory_fees FOR ALL TO authenticated USING (true) WITH CHECK (true);
CREATE POLICY "admin_all_amenities" ON property_amenities FOR ALL TO authenticated USING (true) WITH CHECK (true);

INSERT INTO locations (name, slug, state, short_description, meta_title, meta_description, sort_order, is_active)
VALUES ('Ibadan', 'ibadan', 'Oyo State', 'Explore verified land and estate properties in Ibadan.',
  'Land and Property for Sale in Ibadan',
  'Browse verified land and property for sale in Ibadan, Oyo State, from Lexshield Properties.', 2, true)
ON CONFLICT (slug) DO UPDATE SET name=EXCLUDED.name, state=EXCLUDED.state, is_active=true;

INSERT INTO properties (
  id, name, slug, location_id, location_name, city, state, country, property_type,
  estate_type, status, sales_status, developer, featured, price_from, price_display,
  initial_deposit, price_inclusive, price_inclusive_text, description, overview,
  meta_title, meta_description, sort_order, is_active, published, last_price_verified_at
)
VALUES (
  'c0a7e500-0000-4000-8000-000000000001', 'Country Home Estate',
  'country-home-estate-iddo-ibadan', (SELECT id FROM locations WHERE slug='ibadan'),
  'Iddo-Ibadan, Along Ido-Eruwa Road', 'Ibadan', 'Oyo State', 'Nigeria', 'land',
  'Residential Estate', 'available', 'now_selling', 'Lexshield Properties Limited',
  true, 1700000, 'From ₦1.7M', 300000, false,
  'Statutory fees are separate from the advertised land price.',
  'Country Home Estate is a landed property at Iddo-Ibadan along Ido-Eruwa Road in Ibadan, Oyo State.',
  'The estate offers independently priced 300 SQM and 500 SQM residential plots with payment plans of up to 18 months.',
  'Land for Sale in Ibadan | Country Home Estate, Iddo',
  'Explore Country Home Estate in Iddo-Ibadan along Ido-Eruwa Road. 300 SQM from ₦1.7M, 500 SQM from ₦2.7M, ₦300K initial deposit and payment plans up to 18 months. Book an inspection with Lexshield Properties.',
  2, true, true, now()
)
ON CONFLICT (slug) DO UPDATE SET location_id=EXCLUDED.location_id, price_from=EXCLUDED.price_from,
  initial_deposit=EXCLUDED.initial_deposit, featured=true, is_active=true, published=true;

INSERT INTO property_plot_options (id,property_id,label,enquiry_key,plot_type,size_sqm,outright_price,sort_order)
VALUES
 ('c0a7e500-0001-4000-8000-000000000001','c0a7e500-0000-4000-8000-000000000001','300 SQM','300sqm','residential',300,1700000,1),
 ('c0a7e500-0002-4000-8000-000000000001','c0a7e500-0000-4000-8000-000000000001','500 SQM','500sqm','residential',500,2700000,2)
ON CONFLICT (property_id,enquiry_key) DO UPDATE SET label=EXCLUDED.label,size_sqm=EXCLUDED.size_sqm,outright_price=EXCLUDED.outright_price;

INSERT INTO property_payment_plans (plot_option_id,label,duration_months,price,sort_order)
VALUES
 ('c0a7e500-0001-4000-8000-000000000001','0–3 Months',3,1700000,1),
 ('c0a7e500-0001-4000-8000-000000000001','6 Months',6,2000000,2),
 ('c0a7e500-0001-4000-8000-000000000001','12 Months',12,2500000,3),
 ('c0a7e500-0001-4000-8000-000000000001','18 Months',18,3000000,4),
 ('c0a7e500-0002-4000-8000-000000000001','0–3 Months',3,2700000,1),
 ('c0a7e500-0002-4000-8000-000000000001','6 Months',6,3000000,2),
 ('c0a7e500-0002-4000-8000-000000000001','12 Months',12,3500000,3),
 ('c0a7e500-0002-4000-8000-000000000001','18 Months',18,4000000,4)
ON CONFLICT (plot_option_id,label) DO UPDATE SET price=EXCLUDED.price,duration_months=EXCLUDED.duration_months;

INSERT INTO property_statutory_fees (property_id,label,duration_months,amount,sort_order)
VALUES
 ('c0a7e500-0000-4000-8000-000000000001','0–3 Months',3,1800000,1),
 ('c0a7e500-0000-4000-8000-000000000001','6 Months',6,2000000,2),
 ('c0a7e500-0000-4000-8000-000000000001','12 Months',12,2200000,3),
 ('c0a7e500-0000-4000-8000-000000000001','18 Months',18,2500000,4)
ON CONFLICT (property_id,label) DO UPDATE SET amount=EXCLUDED.amount,duration_months=EXCLUDED.duration_months;

INSERT INTO property_amenities (property_id,name,development_status,sort_order)
SELECT 'c0a7e500-0000-4000-8000-000000000001', name, 'advertised', ord
FROM unnest(ARRAY['Perimeter Fencing','Security','24 Hours Electricity','Good Road Network','Recreational Center','Drainage','Modern Tech Hub','Shopping Mall','World Class Educational Center']) WITH ORDINALITY AS feature(name,ord)
ON CONFLICT (property_id,name) DO NOTHING;

-- Official artwork should be uploaded to permanent storage and inserted into property_images.
-- Legal documentation intentionally remains empty because no title was supplied.
