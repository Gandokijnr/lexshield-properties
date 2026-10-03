<template>
  <div>
    <section class="section bg-primary-950 text-white">
      <div class="container-page">
        <p class="text-sm font-semibold uppercase tracking-[0.18em] text-primary-200">Testimonials</p>
        <h1 class="mt-3 text-4xl sm:text-5xl">Customer stories</h1>
        <p class="mt-5 max-w-2xl text-lg leading-8 text-primary-100">Hear about customers’ experiences with Lexshield Properties, then speak with our team about your own property plans.</p>
      </div>
    </section>
    <section class="section bg-primary-50">
      <div class="container-page">
        <div v-if="testimonials.length" class="grid gap-8 lg:grid-cols-2">
          <article v-for="item in testimonials" :key="item.videoUrl" class="card overflow-hidden">
            <div class="aspect-video bg-primary-950">
              <iframe :src="item.embedUrl" :title="item.title" class="h-full w-full" loading="lazy" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen />
            </div>
            <div class="p-6">
              <h2 class="text-2xl text-neutral-900">{{ item.title }}</h2>
              <p v-if="item.description" class="mt-3 leading-7 text-neutral-600">{{ item.description }}</p>
              <NuxtLink to="/contact" class="mt-5 inline-block font-semibold text-primary-700">Ask about your property options →</NuxtLink>
            </div>
          </article>
        </div>
        <div v-else class="card mx-auto max-w-2xl p-8 text-center sm:p-12">
          <h2 class="text-2xl text-neutral-900">Customer videos coming soon</h2>
          <p class="mt-4 leading-7 text-neutral-600">We’ll share customer testimonial videos here. In the meantime, our team is available to answer your property questions and help you arrange a site visit.</p>
        </div>
      </div>
    </section>
    <section class="section">
      <div class="container-page rounded-2xl bg-primary-900 p-8 text-center text-white sm:p-12">
        <h2 class="text-3xl sm:text-4xl">Take the next step towards your property</h2>
        <p class="mx-auto mt-4 max-w-2xl leading-7 text-primary-100">Ask about available plots, current prices and payment plans, or visit an estate with our team.</p>
        <div class="mt-7 flex flex-wrap justify-center gap-3">
          <NuxtLink to="/contact" class="btn-secondary">Send an Enquiry</NuxtLink>
          <a :href="whatsappUrl" target="_blank" rel="noopener" class="btn-whatsapp" @click="trackWhatsApp">Chat on WhatsApp</a>
          <NuxtLink to="/book-inspection" class="btn-outline">Book Site Inspection</NuxtLink>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup lang="ts">
import { videoTestimonials } from '~/data/testimonials'

function youtubeEmbed(value: string): string | null {
  // Extract only the URL from pasted embed code; never render arbitrary HTML.
  const source = value.match(/\bsrc\s*=\s*["']([^"']+)["']/i)?.[1] || value.trim()
  try {
    const url = new URL(source.replace(/&amp;/g, '&'))
    if (url.protocol !== 'https:') return null
    const host = url.hostname.replace(/^www\./, '')
    if (!['youtube.com', 'm.youtube.com', 'youtube-nocookie.com', 'youtu.be'].includes(host)) return null
    const id = host === 'youtu.be' ? url.pathname.slice(1) : url.searchParams.get('v') || url.pathname.match(/^\/(?:embed|shorts)\/([^/]+)/)?.[1]
    return id && /^[A-Za-z0-9_-]{11}$/.test(id) ? `https://www.youtube-nocookie.com/embed/${id}` : null
  } catch { return null }
}
const testimonials = videoTestimonials.flatMap(item => {
  const embedUrl = youtubeEmbed(item.videoUrl)
  return embedUrl ? [{ ...item, embedUrl }] : []
})
const { buildUrl } = useWhatsApp()
const whatsappUrl = computed(() => buildUrl())
function trackWhatsApp() {
  if (import.meta.client) window.dataLayer?.push({ event: 'whatsapp_click', source: 'testimonials_page' })
}
const config = useRuntimeConfig()
useSeoMeta({ title: 'Customer Testimonials | Lexshield Properties', description: 'Watch Lexshield Properties customer testimonial videos and contact our team about available properties, payment plans and site inspections.' })
useHead({ link: [{ rel: 'canonical', href: `${config.public.siteUrl.replace(/\/$/, '')}/testimonials` }] })
</script>
