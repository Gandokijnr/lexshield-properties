INSERT INTO storage.buckets (id,name,public,file_size_limit,allowed_mime_types) VALUES ('property-media','property-media',true,10485760,ARRAY['image/jpeg','image/png','image/webp','image/avif']) ON CONFLICT (id) DO UPDATE SET public=true,file_size_limit=10485760,allowed_mime_types=EXCLUDED.allowed_mime_types;
CREATE POLICY "public_read_property_media" ON storage.objects FOR SELECT TO public USING(bucket_id='property-media');
CREATE POLICY "admin_upload_property_media" ON storage.objects FOR INSERT TO authenticated WITH CHECK(bucket_id='property-media');
CREATE POLICY "admin_update_property_media" ON storage.objects FOR UPDATE TO authenticated USING(bucket_id='property-media') WITH CHECK(bucket_id='property-media');
CREATE POLICY "admin_delete_property_media" ON storage.objects FOR DELETE TO authenticated USING(bucket_id='property-media');
