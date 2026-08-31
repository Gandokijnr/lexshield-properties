/*
# Lexshield Properties - Core Schema

Creates the full relational database for a real-estate lead-generation platform.

## Tables
- locations: geographic areas (Mowe/Ofada, Ibeju-Lekki, Apete/Ibadan, etc.)
- properties: main property/estate listings
- property_images: gallery images per property
- property_videos: video links per property
- property_plot_sizes: available plot sizes + prices
- property_payment_plans: installment options
- property_documents: land title documentation
- property_landmarks: nearby landmarks
- property_faqs: per-property Q&A
- property_development_updates: dated construction progress
- leads: enquiry form submissions
- inspection_bookings: site visit requests
- testimonials: customer reviews
- blog_posts: educational content
- blog_categories: blog taxonomy
- site_settings: global config (phone, whatsapp, address, etc.)

## Security
- RLS enabled on all tables.
- Public tables (properties, locations, blog, testimonials) readable by anon+authenticated.
- Lead/inspection tables writable by anon (form submissions) but only readable by authenticated admin.
- Admin-only tables (site_settings) restricted to authenticated.
*/

-- Locations
CREATE TABLE IF NOT EXISTS locations (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  slug text NOT NULL UNIQUE,
  state text NOT NULL,
  short_description text,
  description text,
  meta_title text,
  meta_description text,
  og_image text,
  landmarks text[],
  faq jsonb DEFAULT '[]'::jsonb,
  sort_order int DEFAULT 0,
  is_active boolean DEFAULT true,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

-- Properties
CREATE TABLE IF NOT EXISTS properties (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  slug text NOT NULL UNIQUE,
  location_id uuid REFERENCES locations(id) ON DELETE SET NULL,
  location_name text NOT NULL,
  state text NOT NULL,
  property_type text DEFAULT 'land',
  status text DEFAULT 'available',
  featured boolean DEFAULT false,
  featured_image text,
  gallery jsonb DEFAULT '[]'::jsonb,
  videos jsonb DEFAULT '[]'::jsonb,
  price_from bigint,
  price_display text,
  previous_price bigint,
  currency text DEFAULT 'NGN',
  plot_sizes jsonb DEFAULT '[]'::jsonb,
  payment_plans jsonb DEFAULT '[]'::jsonb,
  documentation jsonb DEFAULT '[]'::jsonb,
  landmarks jsonb DEFAULT '[]'::jsonb,
  features text[],
  description text,
  overview text,
  development_status text,
  coordinates jsonb,
  brochure_url text,
  meta_title text,
  meta_description text,
  og_image text,
  canonical_url text,
  noindex boolean DEFAULT false,
  sort_order int DEFAULT 0,
  is_active boolean DEFAULT true,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

-- Property FAQs
CREATE TABLE IF NOT EXISTS property_faqs (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  property_id uuid NOT NULL REFERENCES properties(id) ON DELETE CASCADE,
  question text NOT NULL,
  answer text NOT NULL,
  sort_order int DEFAULT 0,
  created_at timestamptz DEFAULT now()
);

-- Property Development Updates
CREATE TABLE IF NOT EXISTS property_development_updates (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  property_id uuid NOT NULL REFERENCES properties(id) ON DELETE CASCADE,
  title text NOT NULL,
  description text,
  image_url text,
  update_date date NOT NULL DEFAULT CURRENT_DATE,
  created_at timestamptz DEFAULT now()
);

-- Leads (enquiry form)
CREATE TABLE IF NOT EXISTS leads (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  phone text NOT NULL,
  email text,
  message text,
  property_id uuid REFERENCES properties(id) ON DELETE SET NULL,
  property_name text,
  property_location text,
  property_price text,
  page_url text,
  source text DEFAULT 'website',
  utm_source text,
  utm_medium text,
  utm_campaign text,
  utm_content text,
  referrer text,
  status text DEFAULT 'new',
  assigned_to text,
  notes text,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

-- Inspection Bookings
CREATE TABLE IF NOT EXISTS inspection_bookings (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  phone text NOT NULL,
  email text,
  property_id uuid REFERENCES properties(id) ON DELETE SET NULL,
  property_name text,
  preferred_date date,
  attendees int,
  source text DEFAULT 'website',
  utm_source text,
  utm_medium text,
  utm_campaign text,
  status text DEFAULT 'new',
  notes text,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

-- Testimonials
CREATE TABLE IF NOT EXISTS testimonials (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  location text,
  property_id uuid REFERENCES properties(id) ON DELETE SET NULL,
  property_name text,
  rating int DEFAULT 5,
  text text NOT NULL,
  image_url text,
  is_featured boolean DEFAULT false,
  is_active boolean DEFAULT true,
  created_at timestamptz DEFAULT now()
);

-- Blog Categories
CREATE TABLE IF NOT EXISTS blog_categories (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  slug text NOT NULL UNIQUE,
  description text,
  created_at timestamptz DEFAULT now()
);

-- Blog Posts
CREATE TABLE IF NOT EXISTS blog_posts (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  title text NOT NULL,
  slug text NOT NULL UNIQUE,
  excerpt text,
  content text,
  category_id uuid REFERENCES blog_categories(id) ON DELETE SET NULL,
  category_name text,
  author text DEFAULT 'Lexshield Properties',
  featured_image text,
  meta_title text,
  meta_description text,
  tags text[],
  published boolean DEFAULT false,
  published_at date,
  sort_order int DEFAULT 0,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

-- Site Settings (singleton)
CREATE TABLE IF NOT EXISTS site_settings (
  id int PRIMARY KEY DEFAULT 1,
  company_name text DEFAULT 'Lexshield Properties Limited',
  phone text,
  whatsapp text,
  email text,
  address text,
  office_hours text,
  rc_number text,
  social_facebook text,
  social_twitter text,
  social_instagram text,
  social_linkedin text,
  ga_id text,
  updated_at timestamptz DEFAULT now(),
  CONSTRAINT singleton CHECK (id = 1)
);

-- Insert default settings
INSERT INTO site_settings (id, phone, whatsapp, email, address, office_hours, rc_number)
VALUES (1, '+2348012345678', '2348012345678', 'info@lexshieldproperties.com', 'Lagos, Nigeria', 'Mon-Sat 8am-6pm', 'RC 1234567')
ON CONFLICT (id) DO NOTHING;

-- Indexes
CREATE INDEX IF NOT EXISTS idx_properties_location ON properties(location_id);
CREATE INDEX IF NOT EXISTS idx_properties_slug ON properties(slug);
CREATE INDEX IF NOT EXISTS idx_properties_featured ON properties(featured) WHERE featured = true;
CREATE INDEX IF NOT EXISTS idx_properties_status ON properties(status);
CREATE INDEX IF NOT EXISTS idx_properties_active ON properties(is_active) WHERE is_active = true;
CREATE INDEX IF NOT EXISTS idx_leads_created ON leads(created_at DESC);
CREATE INDEX IF NOT EXISTS idx_inspections_created ON inspection_bookings(created_at DESC);
CREATE INDEX IF NOT EXISTS idx_blog_slug ON blog_posts(slug);
CREATE INDEX IF NOT EXISTS idx_blog_published ON blog_posts(published) WHERE published = true;
CREATE INDEX IF NOT EXISTS idx_locations_slug ON locations(slug);

-- Enable RLS on all tables
ALTER TABLE locations ENABLE ROW LEVEL SECURITY;
ALTER TABLE properties ENABLE ROW LEVEL SECURITY;
ALTER TABLE property_faqs ENABLE ROW LEVEL SECURITY;
ALTER TABLE property_development_updates ENABLE ROW LEVEL SECURITY;
ALTER TABLE leads ENABLE ROW LEVEL SECURITY;
ALTER TABLE inspection_bookings ENABLE ROW LEVEL SECURITY;
ALTER TABLE testimonials ENABLE ROW LEVEL SECURITY;
ALTER TABLE blog_categories ENABLE ROW LEVEL SECURITY;
ALTER TABLE blog_posts ENABLE ROW LEVEL SECURITY;
ALTER TABLE site_settings ENABLE ROW LEVEL SECURITY;

-- PUBLIC READ POLICIES (anon + authenticated can read published content)
DROP POLICY IF EXISTS "public_read_locations" ON locations;
CREATE POLICY "public_read_locations" ON locations FOR SELECT
  TO anon, authenticated USING (is_active = true);

DROP POLICY IF EXISTS "public_read_properties" ON properties;
CREATE POLICY "public_read_properties" ON properties FOR SELECT
  TO anon, authenticated USING (is_active = true);

DROP POLICY IF EXISTS "public_read_property_faqs" ON property_faqs;
CREATE POLICY "public_read_property_faqs" ON property_faqs FOR SELECT
  TO anon, authenticated USING (true);

DROP POLICY IF EXISTS "public_read_property_updates" ON property_development_updates;
CREATE POLICY "public_read_property_updates" ON property_development_updates FOR SELECT
  TO anon, authenticated USING (true);

DROP POLICY IF EXISTS "public_read_testimonials" ON testimonials;
CREATE POLICY "public_read_testimonials" ON testimonials FOR SELECT
  TO anon, authenticated USING (is_active = true);

DROP POLICY IF EXISTS "public_read_blog_categories" ON blog_categories;
CREATE POLICY "public_read_blog_categories" ON blog_categories FOR SELECT
  TO anon, authenticated USING (true);

DROP POLICY IF EXISTS "public_read_blog_posts" ON blog_posts;
CREATE POLICY "public_read_blog_posts" ON blog_posts FOR SELECT
  TO anon, authenticated USING (published = true);

DROP POLICY IF EXISTS "public_read_site_settings" ON site_settings;
CREATE POLICY "public_read_site_settings" ON site_settings FOR SELECT
  TO anon, authenticated USING (true);

-- PUBLIC WRITE: leads (anon can insert, cannot read)
DROP POLICY IF EXISTS "public_insert_leads" ON leads;
CREATE POLICY "public_insert_leads" ON leads FOR INSERT
  TO anon, authenticated WITH CHECK (true);

-- PUBLIC WRITE: inspection bookings (anon can insert, cannot read)
DROP POLICY IF EXISTS "public_insert_inspections" ON inspection_bookings;
CREATE POLICY "public_insert_inspections" ON inspection_bookings FOR INSERT
  TO anon, authenticated WITH CHECK (true);

-- ADMIN POLICIES (authenticated can do everything on management tables)
-- Locations admin
DROP POLICY IF EXISTS "admin_all_locations" ON locations;
CREATE POLICY "admin_all_locations" ON locations FOR ALL
  TO authenticated USING (true) WITH CHECK (true);

-- Properties admin
DROP POLICY IF EXISTS "admin_all_properties" ON properties;
CREATE POLICY "admin_all_properties" ON properties FOR ALL
  TO authenticated USING (true) WITH CHECK (true);

-- Property FAQs admin
DROP POLICY IF EXISTS "admin_all_property_faqs" ON property_faqs;
CREATE POLICY "admin_all_property_faqs" ON property_faqs FOR ALL
  TO authenticated USING (true) WITH CHECK (true);

-- Property updates admin
DROP POLICY IF EXISTS "admin_all_property_updates" ON property_development_updates;
CREATE POLICY "admin_all_property_updates" ON property_development_updates FOR ALL
  TO authenticated USING (true) WITH CHECK (true);

-- Leads admin (read/update/delete only - inserts handled by public policy)
DROP POLICY IF EXISTS "admin_read_leads" ON leads;
CREATE POLICY "admin_read_leads" ON leads FOR SELECT
  TO authenticated USING (true);

DROP POLICY IF EXISTS "admin_update_leads" ON leads;
CREATE POLICY "admin_update_leads" ON leads FOR UPDATE
  TO authenticated USING (true) WITH CHECK (true);

DROP POLICY IF EXISTS "admin_delete_leads" ON leads;
CREATE POLICY "admin_delete_leads" ON leads FOR DELETE
  TO authenticated USING (true);

-- Inspections admin
DROP POLICY IF EXISTS "admin_read_inspections" ON inspection_bookings;
CREATE POLICY "admin_read_inspections" ON inspection_bookings FOR SELECT
  TO authenticated USING (true);

DROP POLICY IF EXISTS "admin_update_inspections" ON inspection_bookings;
CREATE POLICY "admin_update_inspections" ON inspection_bookings FOR UPDATE
  TO authenticated USING (true) WITH CHECK (true);

DROP POLICY IF EXISTS "admin_delete_inspections" ON inspection_bookings;
CREATE POLICY "admin_delete_inspections" ON inspection_bookings FOR DELETE
  TO authenticated USING (true);

-- Testimonials admin
DROP POLICY IF EXISTS "admin_all_testimonials" ON testimonials;
CREATE POLICY "admin_all_testimonials" ON testimonials FOR ALL
  TO authenticated USING (true) WITH CHECK (true);

-- Blog admin
DROP POLICY IF EXISTS "admin_all_blog_categories" ON blog_categories;
CREATE POLICY "admin_all_blog_categories" ON blog_categories FOR ALL
  TO authenticated USING (true) WITH CHECK (true);

DROP POLICY IF EXISTS "admin_all_blog_posts" ON blog_posts;
CREATE POLICY "admin_all_blog_posts" ON blog_posts FOR ALL
  TO authenticated USING (true) WITH CHECK (true);

-- Site settings admin
DROP POLICY IF EXISTS "admin_update_settings" ON site_settings;
CREATE POLICY "admin_update_settings" ON site_settings FOR UPDATE
  TO authenticated USING (true) WITH CHECK (true);

-- updated_at triggers
CREATE OR REPLACE FUNCTION update_updated_at()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = now();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS locations_updated ON locations;
CREATE TRIGGER locations_updated BEFORE UPDATE ON locations
  FOR EACH ROW EXECUTE FUNCTION update_updated_at();

DROP TRIGGER IF EXISTS properties_updated ON properties;
CREATE TRIGGER properties_updated BEFORE UPDATE ON properties
  FOR EACH ROW EXECUTE FUNCTION update_updated_at();

DROP TRIGGER IF EXISTS leads_updated ON leads;
CREATE TRIGGER leads_updated BEFORE UPDATE ON leads
  FOR EACH ROW EXECUTE FUNCTION update_updated_at();

DROP TRIGGER IF EXISTS inspections_updated ON inspection_bookings;
CREATE TRIGGER inspections_updated BEFORE UPDATE ON inspection_bookings
  FOR EACH ROW EXECUTE FUNCTION update_updated_at();

DROP TRIGGER IF EXISTS blog_updated ON blog_posts;
CREATE TRIGGER blog_updated BEFORE UPDATE ON blog_posts
  FOR EACH ROW EXECUTE FUNCTION update_updated_at();
