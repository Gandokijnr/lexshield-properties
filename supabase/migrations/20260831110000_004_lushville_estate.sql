-- Lushville Estate and explicit commercial pricing models.
ALTER TABLE properties ADD COLUMN IF NOT EXISTS pricing_model text NOT NULL DEFAULT 'contact_for_price'
  CHECK (pricing_model IN ('all_inclusive','plus_statutory_fees','contact_for_price'));
UPDATE properties SET pricing_model='all_inclusive' WHERE slug='emirates-parks-gardens-mowe-ofada';
UPDATE properties SET pricing_model='plus_statutory_fees' WHERE slug='country-home-estate-iddo-ibadan';
ALTER TABLE inspection_bookings ADD COLUMN IF NOT EXISTS payment_plan_id uuid REFERENCES property_payment_plans(id) ON DELETE SET NULL;
ALTER TABLE inspection_bookings ADD COLUMN IF NOT EXISTS payment_plan_label text;
ALTER TABLE inspection_bookings ADD COLUMN IF NOT EXISTS displayed_price bigint;

INSERT INTO locations (name,slug,state,short_description,meta_title,meta_description,sort_order,is_active)
VALUES ('Apete / Ibadan','apete-ibadan','Oyo State','Explore verified land and estate properties in Apete, Ibadan.',
 'Land and Properties for Sale in Apete, Ibadan',
 'Explore available land and estate properties in Apete, Ibadan, with transparent current pricing.',3,true)
ON CONFLICT (slug) DO UPDATE SET name=EXCLUDED.name,state=EXCLUDED.state,is_active=true;

INSERT INTO properties (
 id,name,slug,location_id,location_name,city,state,country,property_type,estate_type,status,
 sales_status,developer,featured,price_from,price_display,initial_deposit,pricing_model,
 price_inclusive,price_inclusive_text,description,overview,meta_title,meta_description,
 sort_order,is_active,published,last_price_verified_at
)
VALUES (
 '1a5a711e-0000-4000-8000-000000000001','Lushville Estate','lushville-estate-lamini-apete-ibadan',
 (SELECT id FROM locations WHERE slug='apete-ibadan'),'Lamini-Apete, Ibadan','Ibadan','Oyo State','Nigeria',
 'land','Residential & Commercial','available','now_selling','Lexshield Properties Limited',true,
 5100000,'From ₦5.1M',NULL,'all_inclusive',true,'All Price Inclusive — No Hidden Charges',
 'Lushville Estate is a Lexshield Properties landed development located in Lamini-Apete, Ibadan, Oyo State.',
 'The estate offers 300 SQM and 500 SQM residential plots and a commercial plot with flexible payment plans up to 18 months.',
 'Land for Sale in Apete Ibadan | Lushville Estate',
 'Explore Lushville Estate in Lamini-Apete, Ibadan. 300 SQM from ₦5.1M, 500 SQM from ₦7.3M and commercial plots from ₦8.5M with flexible payment plans up to 18 months.',
 3,true,true,now()
)
ON CONFLICT (slug) DO UPDATE SET location_id=EXCLUDED.location_id,location_name=EXCLUDED.location_name,
 price_from=EXCLUDED.price_from,pricing_model='all_inclusive',initial_deposit=NULL,featured=true,is_active=true,published=true;

INSERT INTO property_plot_options (id,property_id,label,enquiry_key,plot_type,size_sqm,outright_price,sort_order)
VALUES
 ('1a5a711e-0001-4000-8000-000000000001','1a5a711e-0000-4000-8000-000000000001','300 SQM','300sqm','residential',300,5100000,1),
 ('1a5a711e-0002-4000-8000-000000000001','1a5a711e-0000-4000-8000-000000000001','500 SQM','500sqm','residential',500,7300000,2),
 ('1a5a711e-0003-4000-8000-000000000001','1a5a711e-0000-4000-8000-000000000001','Commercial Plot','commercial','commercial',NULL,8500000,3)
ON CONFLICT (property_id,enquiry_key) DO UPDATE SET label=EXCLUDED.label,size_sqm=EXCLUDED.size_sqm,outright_price=EXCLUDED.outright_price;

INSERT INTO property_payment_plans (plot_option_id,label,duration_months,price,sort_order)
VALUES
 ('1a5a711e-0001-4000-8000-000000000001','Base Price',NULL,5100000,0),
 ('1a5a711e-0001-4000-8000-000000000001','6 Months',6,5700000,1),
 ('1a5a711e-0001-4000-8000-000000000001','12 Months',12,6600000,2),
 ('1a5a711e-0001-4000-8000-000000000001','18 Months',18,7500000,3),
 ('1a5a711e-0002-4000-8000-000000000001','Base Price',NULL,7300000,0),
 ('1a5a711e-0002-4000-8000-000000000001','6 Months',6,7900000,1),
 ('1a5a711e-0002-4000-8000-000000000001','12 Months',12,8800000,2),
 ('1a5a711e-0002-4000-8000-000000000001','18 Months',18,9700000,3),
 ('1a5a711e-0003-4000-8000-000000000001','Base Price',NULL,8500000,0),
 ('1a5a711e-0003-4000-8000-000000000001','6 Months',6,9100000,1),
 ('1a5a711e-0003-4000-8000-000000000001','12 Months',12,10000000,2),
 ('1a5a711e-0003-4000-8000-000000000001','18 Months',18,10900000,3)
ON CONFLICT (plot_option_id,label) DO UPDATE SET price=EXCLUDED.price,duration_months=EXCLUDED.duration_months;

-- No deposit, legal documentation, amenities, or commercial SQM are seeded because none were verified.
-- Add official artwork only after uploading it to permanent property media storage.
