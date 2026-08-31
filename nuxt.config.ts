// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  compatibilityDate: '2024-11-01',
  devtools: { enabled: false },

  modules: [
    '@nuxtjs/tailwindcss',
    '@nuxt/image',
  ],

  css: ['~/assets/css/main.css'],

  runtimeConfig: {
    public: {
      siteUrl: process.env.SITE_URL || 'https://lexshieldproperties.com',
      companyVideoUrl: process.env.COMPANY_VIDEO_URL || '',
      supabaseUrl: process.env.SUPABASE_URL || process.env.VITE_SUPABASE_URL || '',
      supabaseAnonKey: process.env.SUPABASE_ANON_KEY || process.env.VITE_SUPABASE_ANON_KEY || '',
      whatsappNumber: process.env.WHATSAPP_NUMBER || '2348012345678',
      phoneNumber: process.env.PHONE_NUMBER || '+2348012345678',
      email: process.env.CONTACT_EMAIL || 'info@lexshieldproperties.com',
      gaId: process.env.GA_ID || '',
    },
  },

  site: {
    url: 'https://lexshieldproperties.com',
    name: 'Lexshield Properties Limited',
  },

  app: {
    head: {
      htmlAttrs: { lang: 'en' },
      meta: [
        { charset: 'utf-8' },
        { name: 'viewport', content: 'width=device-width, initial-scale=1' },
        { name: 'theme-color', content: '#ea580c' },
      ],
      link: [
        { rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' },
        { rel: 'preconnect', href: 'https://fonts.googleapis.com' },
        { rel: 'preconnect', href: 'https://fonts.gstatic.com', crossorigin: '' },
        {
          rel: 'stylesheet',
          href: 'https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap',
        },
      ],
    },
  },

  image: {
    quality: 75,
    format: ['webp', 'avif'],
    screens: {
      xs: 320,
      sm: 640,
      md: 768,
      lg: 1024,
      xl: 1280,
      xxl: 1536,
    },
  },

  typescript: {
    strict: false,
  },
})
