import { createClient } from '@supabase/supabase-js'

function escapeXml(value: string) {
  return value.replace(/[<>&'\"]/g, char => ({ '<': '&lt;', '>': '&gt;', '&': '&amp;', "'": '&apos;', '"': '&quot;' })[char]!)
}

export default defineEventHandler(async (event) => {
  const config = useRuntimeConfig(event)
  const base = String(config.public.siteUrl).replace(/\/$/, '')
  const routes = [
    '/',
    '/about',
    '/contact',
    '/properties',
    '/properties/mowe-ofada',
    '/properties/ibeju-lekki',
    '/properties/ibadan',
    '/properties/apete-ibadan',
    '/book-inspection',
    '/privacy',
    '/terms',
  ]
  if (config.public.supabaseUrl && config.public.supabaseAnonKey) {
    const client = createClient(String(config.public.supabaseUrl), String(config.public.supabaseAnonKey))
    const { data } = await client.from('properties').select('slug').eq('is_active', true).eq('published', true)
    for (const property of data || []) routes.push(`/property/${property.slug}`)
    const { data: posts } = await client.from('blog_posts').select('slug').eq('published', true)
    routes.push('/blog')
    for (const post of posts || []) routes.push(`/blog/${post.slug}`)
  }
  setHeader(event, 'content-type', 'application/xml; charset=utf-8')
  return `<?xml version="1.0" encoding="UTF-8"?><urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">${routes.map(route => `<url><loc>${escapeXml(`${base}${route}`)}</loc></url>`).join('')}</urlset>`
})
