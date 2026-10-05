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
          <a :href="whatsappLink" target="_blank" rel="noopener" class="flex items-center gap-1 font-semibold text-[#FF6B1A]" @click="trackWhatsApp">
            <WhatsAppIcon class="h-3.5 w-3.5" />
            <span>WhatsApp</span>
          </a>
        </div>
      </div>
    </div>

    <div class="container-page flex items-center justify-between py-3">
      <NuxtLink to="/" class="shrink-0" aria-label="Lexshield Properties Limited home">
        <img
          src="/lexshield-logo.jpg"
          alt="Lexshield Properties Limited"
          width="52"
          class="h-9 w-auto object-contain sm:h-10"
        />
      </NuxtLink>

      <nav class="hidden items-center gap-1 lg:flex">
        <NuxtLink to="/" class="rounded-lg px-3 py-2 text-sm font-medium text-neutral-700 hover:bg-neutral-100">Home</NuxtLink>
        <NavDropdown label="Estates" :items="propertyItems" />
        <NuxtLink to="/about" class="rounded-lg px-3 py-2 text-sm font-medium text-neutral-700 hover:bg-neutral-100">About us</NuxtLink>
        <NuxtLink to="/testimonials" class="rounded-lg px-3 py-2 text-sm font-medium text-neutral-700 hover:bg-neutral-100">Testimonials</NuxtLink>
        <NuxtLink to="/blog" class="rounded-lg px-3 py-2 text-sm font-medium text-neutral-700 hover:bg-neutral-100">Properties guide</NuxtLink>
        <NuxtLink to="/book-inspection" class="rounded-lg px-3 py-2 text-sm font-medium text-neutral-700 hover:bg-neutral-100">Book inspection</NuxtLink>
        <NuxtLink to="/contact" class="rounded-lg px-3 py-2 text-sm font-medium text-neutral-700 hover:bg-neutral-100">Contact us</NuxtLink>
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
          <NuxtLink to="/" class="rounded-lg px-3 py-2.5 text-sm font-medium text-neutral-700 hover:bg-neutral-100" @click="mobileOpen = false">Home</NuxtLink>
          <NuxtLink to="/properties" class="rounded-lg px-3 py-2.5 text-sm font-medium text-neutral-700 hover:bg-neutral-100" @click="mobileOpen = false">Estates</NuxtLink>
          <NuxtLink to="/properties/mowe-ofada" class="rounded-lg px-3 py-2.5 pl-6 text-sm text-neutral-600 hover:bg-neutral-100" @click="mobileOpen = false">Mowe / Ofada</NuxtLink>
          <NuxtLink to="/properties/ibeju-lekki" class="rounded-lg px-3 py-2.5 pl-6 text-sm text-neutral-600 hover:bg-neutral-100" @click="mobileOpen = false">Ibeju-Lekki</NuxtLink>
          <NuxtLink to="/properties/apete-ibadan" class="rounded-lg px-3 py-2.5 pl-6 text-sm text-neutral-600 hover:bg-neutral-100" @click="mobileOpen = false">Apete, Ibadan</NuxtLink>
          <NuxtLink to="/about" class="rounded-lg px-3 py-2.5 text-sm font-medium text-neutral-700 hover:bg-neutral-100" @click="mobileOpen = false">About us</NuxtLink>
          <NuxtLink to="/testimonials" class="rounded-lg px-3 py-2.5 text-sm font-medium text-neutral-700 hover:bg-neutral-100" @click="mobileOpen = false">Testimonials</NuxtLink>
          <NuxtLink to="/blog" class="rounded-lg px-3 py-2.5 text-sm font-medium text-neutral-700 hover:bg-neutral-100" @click="mobileOpen = false">Properties guide</NuxtLink>
          <NuxtLink to="/book-inspection" class="rounded-lg px-3 py-2.5 text-sm font-medium text-neutral-700 hover:bg-neutral-100" @click="mobileOpen = false">Book inspection</NuxtLink>
          <NuxtLink to="/contact" class="rounded-lg px-3 py-2.5 text-sm font-medium text-neutral-700 hover:bg-neutral-100" @click="mobileOpen = false">Contact us</NuxtLink>
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
  { label: 'All Estates', to: '/properties' },
  { label: 'Mowe / Ofada', to: '/properties/mowe-ofada' },
  { label: 'Ibeju-Lekki', to: '/properties/ibeju-lekki' },
  { label: 'Apete, Ibadan', to: '/properties/apete-ibadan' },
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
