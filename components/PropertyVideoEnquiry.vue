<template>
  <section class="section bg-primary-50">
    <div class="container-page grid items-start gap-10 lg:grid-cols-2 lg:gap-14">
      <div>
        <p class="text-sm font-semibold uppercase tracking-[0.18em] text-primary-700">Explore the estate</p>
        <h2 class="mt-3 text-3xl text-neutral-900 sm:text-4xl">Discover {{ property.name }}</h2>
        <p class="mt-4 leading-7 text-neutral-600">{{ videos.length ? 'Watch the estate video, then ask our team about available plots, current prices and payment options.' : `Speak with our team about available plots, current prices and payment options at ${property.name}.` }}</p>
        <div v-for="(video, index) in videos" :key="video.url" class="mt-6 overflow-hidden rounded-2xl bg-primary-950 shadow-xl ring-1 ring-black/10">
          <div class="aspect-video">
            <iframe v-if="video.embed" :src="video.url" :title="`${property.name} video ${index + 1}`" class="h-full w-full" loading="lazy" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen />
            <video v-else :src="video.url" class="h-full w-full object-contain" controls playsinline preload="metadata" :aria-label="`${property.name} video ${index + 1}`" @play="track('property_video_started')" @ended="track('property_video_completed')" />
          </div>
        </div>
        <p v-if="!videos.length" class="mt-6 rounded-2xl bg-primary-950 p-8 text-white">Estate video coming soon. Our team can share the latest property information and arrange a visit.</p>
      </div>
      <div class="card p-6 sm:p-8">
        <template v-if="submitted">
          <h3 class="text-2xl text-neutral-900" role="status">Thank you, {{ form.name }}!</h3>
          <p class="mt-3 leading-7 text-neutral-600">Your enquiry about {{ property.name }} has been received. Our team will contact you using the details provided.</p>
          <NuxtLink :to="inspectionUrl" class="btn-primary mt-6" @click="track('inspection_started')">Book a Site Inspection</NuxtLink>
        </template>
        <template v-else>
          <p class="text-sm font-semibold uppercase tracking-wider text-primary-700">Take the next step</p>
          <h3 class="mt-2 text-2xl text-neutral-900">Interested in {{ property.name }}?</h3>
          <p class="mt-3 text-neutral-600">Send your questions to Lexshield. Get help with availability, payment plans and your next site visit.</p>
          <form class="mt-6 space-y-4" @submit.prevent="submit">
            <div><label for="estate-enquiry-name" class="label">Full name *</label><input id="estate-enquiry-name" v-model.trim="form.name" class="input" autocomplete="name" required /></div>
            <div><label for="estate-enquiry-phone" class="label">Phone / WhatsApp *</label><input id="estate-enquiry-phone" v-model.trim="form.phone" class="input" type="tel" autocomplete="tel" required /></div>
            <div><label for="estate-enquiry-email" class="label">Email address</label><input id="estate-enquiry-email" v-model.trim="form.email" class="input" type="email" autocomplete="email" /></div>
            <div><label for="estate-enquiry-message" class="label">What would you like to know? *</label><textarea id="estate-enquiry-message" v-model.trim="form.message" class="input min-h-28" placeholder="Ask about plot sizes, prices, payment plans or inspection dates…" required /></div>
            <label class="flex items-start gap-3 text-sm leading-6 text-neutral-600"><input v-model="form.consent" type="checkbox" class="mt-1 h-4 w-4" required /><span>I agree that Lexshield may contact me about this enquiry. *</span></label>
            <p v-if="errorMessage" role="alert" class="rounded-lg bg-error-50 p-3 text-sm text-error-800">{{ errorMessage }}</p>
            <button type="submit" class="btn-primary w-full" :disabled="submitting">{{ submitting ? 'Sending your enquiry…' : 'Send Property Enquiry' }}</button>
          </form>
        </template>
        <div class="mt-6 border-t border-neutral-200 pt-5">
          <p class="mb-3 text-sm text-neutral-600">Prefer to chat directly with our team?</p>
          <a :href="whatsappUrl" target="_blank" rel="noopener" class="btn-whatsapp w-full" @click="track('whatsapp_click')">Enquire on WhatsApp</a>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup lang="ts">
import type { Property } from '~/types/database'

const props = defineProps<{ property: Property; inspectionUrl: string }>()
const route = useRoute()
const { buildUrl } = useWhatsApp()
const whatsappUrl = computed(() => buildUrl(props.property))
const estateVideos = computed(() => {
  if (props.property.slug === 'emirates-parks-gardens-mowe-ofada') {
    return ['https://www.youtube.com/embed/ol3LLk84fx4']
  }
  if (props.property.slug === 'lushville-estate-lamini-apete-ibadan') {
    return ['https://www.youtube.com/embed/1Q9tKjuTo74']
  }
  if (props.property.slug === 'hampton-court-estate-mowe-ofada') {
    return ['https://www.youtube.com/embed/hCTM82Mfjbw']
  }
  return [...new Set([
  ...[...(props.property.property_images || [])].sort((a, b) => a.sort_order - b.sort_order)
    .filter(item => item.media_type === 'marketing_video' || /\.(mp4|webm|mov)(\?|$)/i.test(item.image_url)).map(item => item.image_url),
  ...(props.property.videos || []),
  ])]
})
function resolveVideo(value: string) {
  try {
    const url = new URL(value)
    if (url.protocol !== 'https:' && url.protocol !== 'http:') return null
    const host = url.hostname.replace(/^www\./, '')
    if (['youtube.com', 'm.youtube.com', 'youtube-nocookie.com', 'youtu.be'].includes(host)) {
      const id = host === 'youtu.be' ? url.pathname.slice(1) : url.searchParams.get('v') || url.pathname.match(/^\/(?:embed|shorts)\/([^/]+)/)?.[1]
      return id && /^[\w-]+$/.test(id) ? { url: `https://www.youtube-nocookie.com/embed/${id}`, embed: true } : null
    }
    if (host === 'vimeo.com' || host === 'player.vimeo.com') {
      const id = url.pathname.match(/(?:\/video)?\/(\d+)/)?.[1]
      return id ? { url: `https://player.vimeo.com/video/${id}`, embed: true } : null
    }
    return /\.(mp4|webm|mov)$/i.test(url.pathname) ? { url: url.href, embed: false } : null
  } catch { return null }
}
const videos = computed(() => estateVideos.value.map(resolveVideo).filter((video): video is NonNullable<typeof video> => Boolean(video)))
const form = reactive({ name: '', phone: '', email: '', message: '', consent: false })
const submitted = ref(false)
const submitting = ref(false)
const errorMessage = ref('')
function track(event: string) {
  if (import.meta.client) {
    const gtagWindow = window as Window & { dataLayer?: Array<Record<string, unknown>> }
    gtagWindow.dataLayer?.push({
      event,
      property_name: props.property.name,
      location: props.property.location_name,
      source: 'property_video_enquiry',
    })
  }
}
async function submit() {
  if (submitting.value || !form.consent) return
  submitting.value = true
  errorMessage.value = ''
  try {
    const { error } = await useSupabase().from('leads').insert({
      name: form.name, phone: form.phone, email: form.email || null, message: form.message,
      property_id: props.property.id, property_name: props.property.name,
      property_location: props.property.location_name, property_price: props.property.price_display,
      source: 'property_video_enquiry', page_url: window.location.href, referrer: document.referrer || null,
      ...Object.fromEntries(['utm_source', 'utm_medium', 'utm_campaign', 'utm_content'].map(key => [key, String(route.query[key] || '') || null])),
    })
    if (error) throw error
    submitted.value = true
    track('lead_submitted')
  } catch {
    errorMessage.value = 'Your enquiry could not be sent. Please try again or use WhatsApp below to speak with our team.'
  } finally { submitting.value = false }
}
</script>
