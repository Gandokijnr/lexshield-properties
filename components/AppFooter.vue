<template>
  <footer class="bg-primary-900 text-neutral-200">
    <div class="container-page py-12">
      <div class="grid gap-8 md:grid-cols-2 lg:grid-cols-4">
        <div>
          <NuxtLink to="/" class="inline-block rounded-lg bg-white p-2" aria-label="Lexshield Properties Limited home">
            <img
              src="/lexshield-logo.jpg"
              alt="Lexshield Properties Limited"
              width="52"
              class="h-14 w-auto object-contain"
            />
          </NuxtLink>
          <p class="mt-4 text-sm leading-relaxed text-neutral-300">
            Verified properties in strategic locations. Smarter real estate investments across Lagos, Ogun and Oyo State.
          </p>
          <div class="mt-4 flex gap-3">
            <a v-if="settings?.social_facebook" :href="settings.social_facebook" target="_blank" rel="noopener" class="rounded-lg bg-primary-800 p-2 hover:bg-primary-700" aria-label="Facebook">
              <FacebookIcon class="h-4 w-4" />
            </a>
            <a v-if="settings?.social_twitter" :href="settings.social_twitter" target="_blank" rel="noopener" class="rounded-lg bg-primary-800 p-2 hover:bg-primary-700" aria-label="Twitter">
              <TwitterIcon class="h-4 w-4" />
            </a>
            <a v-if="settings?.social_instagram" :href="settings.social_instagram" target="_blank" rel="noopener" class="rounded-lg bg-primary-800 p-2 hover:bg-primary-700" aria-label="Instagram">
              <InstagramIcon class="h-4 w-4" />
            </a>
            <a v-if="settings?.social_linkedin" :href="settings.social_linkedin" target="_blank" rel="noopener" class="rounded-lg bg-primary-800 p-2 hover:bg-primary-700" aria-label="LinkedIn">
              <LinkedinIcon class="h-4 w-4" />
            </a>
          </div>
        </div>

        <div>
          <h3 class="mb-4 text-sm font-bold uppercase tracking-wider text-primary-300">Property Locations</h3>
          <ul class="space-y-2 text-sm">
            <li><NuxtLink to="/properties/mowe-ofada" class="text-neutral-300 hover:text-white">Properties in Mowe</NuxtLink></li>
            <li><NuxtLink to="/properties/mowe-ofada" class="text-neutral-300 hover:text-white">Properties in Ofada</NuxtLink></li>
            <li><NuxtLink to="/properties/ibeju-lekki" class="text-neutral-300 hover:text-white">Properties in Ibeju-Lekki</NuxtLink></li>
            <li><NuxtLink to="/properties/apete-ibadan" class="text-neutral-300 hover:text-white">Properties in Apete</NuxtLink></li>
            <li><NuxtLink to="/properties/ibadan" class="text-neutral-300 hover:text-white">Properties in Ibadan</NuxtLink></li>
          </ul>
        </div>

        <div>
          <h3 class="mb-4 text-sm font-bold uppercase tracking-wider text-primary-300">Resources</h3>
          <ul class="space-y-2 text-sm">
            <li><NuxtLink to="/blog" class="text-neutral-300 hover:text-white">Property Guides</NuxtLink></li>
            <li><NuxtLink to="/blog/how-to-verify-land-documents-nigeria" class="text-neutral-300 hover:text-white">Documentation Guide</NuxtLink></li>
            <li><NuxtLink to="/contact" class="text-neutral-300 hover:text-white">FAQs</NuxtLink></li>
            <li><NuxtLink to="/book-inspection" class="text-neutral-300 hover:text-white">Book Inspection</NuxtLink></li>
          </ul>
        </div>

        <div>
          <h3 class="mb-4 text-sm font-bold uppercase tracking-wider text-primary-300">Company</h3>
          <ul class="space-y-2 text-sm">
            <li><NuxtLink to="/about" class="text-neutral-300 hover:text-white">About Lexshield</NuxtLink></li>
            <li><NuxtLink to="/testimonials" class="text-neutral-300 hover:text-white">Testimonials</NuxtLink></li>
            <li><NuxtLink to="/contact" class="text-neutral-300 hover:text-white">Contact</NuxtLink></li>
            <li><NuxtLink to="/privacy" class="text-neutral-300 hover:text-white">Privacy Policy</NuxtLink></li>
            <li><NuxtLink to="/terms" class="text-neutral-300 hover:text-white">Terms</NuxtLink></li>
          </ul>
          <div class="mt-4 space-y-1 text-sm text-neutral-300">
            <a :href="phoneLink" class="flex items-center gap-2 hover:text-white" @click="trackPhone">
              <PhoneIcon class="h-4 w-4" /> {{ phoneDisplay }}
            </a>
            <a :href="`mailto:${email}`" class="flex items-center gap-2 hover:text-white">
              <MailIcon class="h-4 w-4" /> {{ email }}
            </a>
            <p v-if="settings?.address" class="flex items-start gap-2">
              <MapPinIcon class="mt-0.5 h-4 w-4 shrink-0" /> {{ settings.address }}
            </p>
          </div>
        </div>
      </div>
    </div>

    <div class="border-t border-primary-800">
      <div class="container-page flex flex-col items-center justify-between gap-2 py-4 text-xs text-neutral-400 md:flex-row">
        <p>&copy; {{ year }} {{ settings?.company_name || 'Lexshield Properties Limited' }}. All rights reserved.</p>
        <p v-if="settings?.rc_number">RC: {{ settings.rc_number }}</p>
      </div>
    </div>
  </footer>
</template>

<script setup lang="ts">
import {
  Phone as PhoneIcon,
  Mail as MailIcon,
  MapPin as MapPinIcon,
  Facebook as FacebookIcon,
  Twitter as TwitterIcon,
  Instagram as InstagramIcon,
  Linkedin as LinkedinIcon,
} from 'lucide-vue-next'
import type { SiteSettings } from '~/types/database'

const config = useRuntimeConfig()
const { buildUrl: whatsappUrl } = useWhatsApp()
const { buildTelLink } = usePhone()

const phoneDisplay = computed(() => config.public.phoneNumber)
const phoneLink = computed(() => buildTelLink())
const email = computed(() => config.public.email)
const year = new Date().getFullYear()

const { data: settings } = useAsyncData<SiteSettings | null>('site-settings', async () => {
  const supabase = useSupabase()
  const { data } = await supabase.from('site_settings').select('*').eq('id', 1).maybeSingle()
  return data as SiteSettings | null
})

function trackPhone() {
  if (import.meta.client) {
    window.dataLayer?.push({ event: 'phone_click' })
  }
}
</script>
