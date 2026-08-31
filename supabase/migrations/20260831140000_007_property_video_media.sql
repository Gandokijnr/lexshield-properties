UPDATE storage.buckets SET file_size_limit=104857600,allowed_mime_types=ARRAY['image/jpeg','image/png','image/webp','image/avif','video/mp4','video/webm','video/quicktime'] WHERE id='property-media';
