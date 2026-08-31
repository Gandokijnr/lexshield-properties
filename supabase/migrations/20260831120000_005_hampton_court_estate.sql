-- Hampton Court & Estate: current verified all-inclusive pricing.
INSERT INTO properties (
 id,name,slug,location_id,location_name,city,state,country,property_type,estate_type,status,
 sales_status,developer,featured,price_from,price_display,initial_deposit,pricing_model,
 price_inclusive,price_inclusive_text,description,overview,meta_title,meta_description,
 sort_order,is_active,published,last_price_verified_at
)
VALUES (
 '4a6d7000-0000-4000-8000-000000000001','Hampton Court & Estate','hampton-court-estate-mowe-ofada',
 (SELECT id FROM locations WHERE slug='mowe-ofada'),'Mowe-Ofada','Mowe-Ofada','Ogun State','Nigeria',
 'land','Residential & Commercial','available','now_selling','Lexshield Properties Limited',true,
 5300000,'From ₦5.3M',NULL,'all_inclusive',true,'All Prices Are Inclusive',
 'Hampton Court & Estate is a Lexshield Properties landed development in Mowe-Ofada, Ogun State.',
 'The estate offers 300 SQM and 600 SQM residential plots and a commercial plot with flexible payment plans up to 18 months.',
 'Land for Sale in Mowe-Ofada | Hampton Court Estate',
 'Explore Hampton Court & Estate in Mowe-Ofada, Ogun State. 300 SQM from ₦5.3M, 600 SQM from ₦6.8M and commercial plots from ₦8.3M with payment plans up to 18 months. Book a site inspection with Lexshield Properties.',
 4,true,true,now()
)
ON CONFLICT (slug) DO UPDATE SET
 location_id=EXCLUDED.location_id,location_name=EXCLUDED.location_name,city=EXCLUDED.city,state=EXCLUDED.state,
 price_from=EXCLUDED.price_from,price_display=EXCLUDED.price_display,initial_deposit=NULL,
 pricing_model='all_inclusive',price_inclusive=true,price_inclusive_text=EXCLUDED.price_inclusive_text,
 meta_title=EXCLUDED.meta_title,meta_description=EXCLUDED.meta_description,featured=true,
 sales_status='now_selling',status='available',is_active=true,published=true,last_price_verified_at=now();

INSERT INTO property_plot_options (id,property_id,label,enquiry_key,plot_type,size_sqm,outright_price,sort_order)
VALUES
 ('4a6d7000-0001-4000-8000-000000000001','4a6d7000-0000-4000-8000-000000000001','300 SQM','300sqm','residential',300,5300000,1),
 ('4a6d7000-0002-4000-8000-000000000001','4a6d7000-0000-4000-8000-000000000001','600 SQM','600sqm','residential',600,6800000,2),
 ('4a6d7000-0003-4000-8000-000000000001','4a6d7000-0000-4000-8000-000000000001','Commercial Plot','commercial','commercial',NULL,8300000,3)
ON CONFLICT (property_id,enquiry_key) DO UPDATE SET
 label=EXCLUDED.label,plot_type=EXCLUDED.plot_type,size_sqm=EXCLUDED.size_sqm,
 outright_price=EXCLUDED.outright_price,sort_order=EXCLUDED.sort_order,is_active=true;

INSERT INTO property_payment_plans (plot_option_id,label,duration_months,price,sort_order)
VALUES
 ('4a6d7000-0001-4000-8000-000000000001','Base Price',NULL,5300000,0),
 ('4a6d7000-0001-4000-8000-000000000001','6 Months',6,5800000,1),
 ('4a6d7000-0001-4000-8000-000000000001','12 Months',12,6500000,2),
 ('4a6d7000-0001-4000-8000-000000000001','18 Months',18,7200000,3),
 ('4a6d7000-0002-4000-8000-000000000001','Base Price',NULL,6800000,0),
 ('4a6d7000-0002-4000-8000-000000000001','6 Months',6,7400000,1),
 ('4a6d7000-0002-4000-8000-000000000001','12 Months',12,8300000,2),
 ('4a6d7000-0002-4000-8000-000000000001','18 Months',18,9200000,3),
 ('4a6d7000-0003-4000-8000-000000000001','Base Price',NULL,8300000,0),
 ('4a6d7000-0003-4000-8000-000000000001','6 Months',6,8900000,1),
 ('4a6d7000-0003-4000-8000-000000000001','12 Months',12,10000000,2),
 ('4a6d7000-0003-4000-8000-000000000001','18 Months',18,10900000,3)
ON CONFLICT (plot_option_id,label) DO UPDATE SET
 duration_months=EXCLUDED.duration_months,price=EXCLUDED.price,sort_order=EXCLUDED.sort_order;

-- No deposit, commercial SQM, amenities, or legal title are seeded because none were verified.
-- Official artwork awaits upload to permanent storage before insertion into property_images.
