<template>
  <header
    class="sticky top-0 z-50 transition-all duration-300"
    :class="scrolled ? 'bg-white/95 shadow-md backdrop-blur' : 'bg-white'"
  >
    <div class="border-b border-neutral-200" :class="!scrolled ? 'hidden md:block' : ''">
      <div class="container-page flex items-center justify-between py-2 text-xs text-neutral-500">
        <div class="flex items-center gap-4">
          <a :href="phoneLink" class="flex items-center gap-1 hover:text-primary-700" @click="trackPhone">
            <PhoneIcon class="h-3.5 w-3.5" />
            <span>{{ phoneDisplay }}</span>
          </a>
          <a :href="`mailto:${email}`" class="hidden items-center gap-1 hover:text-primary-700 sm:flex">
            <MailIcon class="h-3.5 w-3.5" />
            <span>{{ email }}</span>
          </a>
        </div>
        <div class="flex items-center gap-3">
          <span class="hidden sm:inline">Mon–Sat 8am–6pm</span>
          <a :href="whatsappLink" target="_blank" rel="noopener" class="flex items-center gap-1 font-semibold text-[#25D366]" @click="trackWhatsApp">
            <WhatsAppIcon class="h-3.5 w-3.5" />
            <span>WhatsApp</span>
          </a>
        </div>
      </div>
    </div>

    <div class="container-page flex items-center justify-between py-3">
      <NuxtLink to="/" class="flex items-center gap-2">
        <div class="flex h-10 w-10 items-center justify-center rounded-lg bg-primary-700 text-white">
          <ShieldIcon class="h-6 w-6" />
        </div>
        <div class="leading-tight">
          <span class="block text-lg font-extrabold text-primary-800">Lexshield</span>
          <span class="block text-[10px] font-medium uppercase tracking-wider text-neutral-500">Properties Limited</span>
        </div>
      </NuxtLink>

      <nav class="hidden items-center gap-1 lg:flex">
        <NavDropdown label="Properties" :items="propertyItems" />
        <NavDropdown label="Locations" :items="locationItems" />
        <NuxtLink to="/about" class="rounded-lg px-3 py-2 text-sm font-medium text-neutral-700 hover:bg-neutral-100">About</NuxtLink>
        <NuxtLink to="/blog" class="rounded-lg px-3 py-2 text-sm font-medium text-neutral-700 hover:bg-neutral-100">Property Guides</NuxtLink>
        <NuxtLink to="/book-inspection" class="rounded-lg px-3 py-2 text-sm font-medium text-neutral-700 hover:bg-neutral-100">Book Inspection</NuxtLink>
        <NuxtLink to="/contact" class="rounded-lg px-3 py-2 text-sm font-medium text-neutral-700 hover:bg-neutral-100">Contact</NuxtLink>
      </nav>

      <div class="flex items-center gap-2">
        <a :href="whatsappLink" target="_blank" rel="noopener" class="btn-whatsapp hidden md:inline-flex" @click="trackWhatsApp">
          <WhatsAppIcon class="h-4 w-4" />
          <span>Talk to an Advisor</span>
        </a>
        <button class="rounded-lg p-2 text-neutral-700 hover:bg-neutral-100 lg:hidden" @click="mobileOpen = !mobileOpen" aria-label="Toggle menu">
          <MenuIcon v-if="!mobileOpen" class="h-6 w-6" />
          <CloseIcon v-else class="h-6 w-6" />
        </button>
      </div>
    </div>

    <Transition name="slide-down">
      <div v-if="mobileOpen" class="border-t border-neutral-200 bg-white lg:hidden">
        <nav class="container-page flex flex-col gap-1 py-4">
          <NuxtLink to="/properties" class="rounded-lg px-3 py-2.5 text-sm font-medium text-neutral-700 hover:bg-neutral-100" @click="mobileOpen = false">All Properties</NuxtLink>
          <NuxtLink to="/properties/mowe-ofada" class="rounded-lg px-3 py-2.5 pl-6 text-sm text-neutral-600 hover:bg-neutral-100" @click="mobileOpen = false">Mowe / Ofada</NuxtLink>
          <NuxtLink to="/properties/ibeju-lekki" class="rounded-lg px-3 py-2.5 pl-6 text-sm text-neutral-600 hover:bg-neutral-100" @click="mobileOpen = false">Ibeju-Lekki</NuxtLink>
          <NuxtLink to="/properties/apete-ibadan" class="rounded-lg px-3 py-2.5 pl-6 text-sm text-neutral-600 hover:bg-neutral-100" @click="mobileOpen = false">Apete, Ibadan</NuxtLink>
          <NuxtLink to="/about" class="rounded-lg px-3 py-2.5 text-sm font-medium text-neutral-700 hover:bg-neutral-100" @click="mobileOpen = false">About</NuxtLink>
          <NuxtLink to="/blog" class="rounded-lg px-3 py-2.5 text-sm font-medium text-neutral-700 hover:bg-neutral-100" @click="mobileOpen = false">Property Guides</NuxtLink>
          <NuxtLink to="/book-inspection" class="rounded-lg px-3 py-2.5 text-sm font-medium text-neutral-700 hover:bg-neutral-100" @click="mobileOpen = false">Book Inspection</NuxtLink>
          <NuxtLink to="/contact" class="rounded-lg px-3 py-2.5 text-sm font-medium text-neutral-700 hover:bg-neutral-100" @click="mobileOpen = false">Contact</NuxtLink>
          <a :href="whatsappLink" target="_blank" rel="noopener" class="btn-whatsapp mt-2" @click="trackWhatsApp">
            <WhatsAppIcon class="h-4 w-4" />
            <span>Chat on WhatsApp</span>
          </a>
        </nav>
      </div>
    </Transition>
  </header>
</template>

<script setup lang="ts">
import {
  Phone as PhoneIcon,
  Mail as MailIcon,
  Menu as MenuIcon,
  X as CloseIcon,
  ShieldCheck as ShieldIcon,
  MessageCircle as WhatsAppIcon,
} from 'lucide-vue-next'

const config = useRuntimeConfig()
const { buildUrl: whatsappUrl } = useWhatsApp()
const { buildTelLink } = usePhone()

const phoneDisplay = computed(() => config.public.phoneNumber)
const phoneLink = computed(() => buildTelLink())
const email = computed(() => config.public.email)
const whatsappLink = computed(() => whatsappUrl())

const mobileOpen = ref(false)
const scrolled = ref(false)

const propertyItems = [
  { label: 'All Properties', to: '/properties' },
  { label: 'Mowe / Ofada', to: '/properties/mowe-ofada' },
  { label: 'Ibeju-Lekki', to: '/properties/ibeju-lekki' },
  { label: 'Apete, Ibadan', to: '/properties/apete-ibadan' },
]

const locationItems = [
  { label: 'Mowe-Ofada Ogun state', to: '/properties/mowe-ofada' },
  { label: 'Ibeju-Lekki', to: '/properties/ibeju-lekki' },
  { label: 'Ibadan', to: '/properties/ibadan' },
]

function trackPhone() {
  if (import.meta.client) {
    window.dataLayer?.push({ event: 'phone_click' })
  }
}

function trackWhatsApp() {
  if (import.meta.client) {
    window.dataLayer?.push({ event: 'whatsapp_click' })
  }
}

onMounted(() => {
  window.addEventListener('scroll', () => {
    scrolled.value = window.scrollY > 10
  })
})

watch(() => useRoute().path, () => {
  mobileOpen.value = false
})
</script>
