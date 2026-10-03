<template>
  <div>
    <section class="relative isolate min-h-[560px] overflow-hidden bg-primary-950 text-white">
      <div class="absolute inset-0 -z-20">
        <NuxtImg
          v-for="(slide, index) in heroSlides"
          :key="slide.url"
          :src="slide.url"
          alt=""
          sizes="100vw"
          format="webp"
          class="absolute inset-0 h-full w-full object-cover transition duration-[1400ms] ease-in-out motion-reduce:transition-none"
          :class="index === activeSlide ? 'scale-100 opacity-100' : 'scale-105 opacity-0'"
          :loading="index === 0 ? 'eager' : 'lazy'"
          :fetchpriority="index === 0 ? 'high' : 'auto'"
        />
      </div>
      <div class="absolute inset-0 -z-10 bg-gradient-to-r from-black via-primary-950/75 to-white-900/35" />

      <div class="container-page flex min-h-[560px] items-center py-20 sm:py-28">
        <div class="max-w-3xl">
          <p class="text-sm font-semibold uppercase tracking-[.2em] text-primary-200">Lexshield Properties Limited</p>
          <h1 class="mt-4 text-4xl font-extrabold sm:text-6xl">Verified land. Smarter investments.</h1>
          <p class="mt-5 max-w-2xl text-lg text-primary-100">Explore carefully selected properties across Lagos, Ogun, and Oyo State.</p>
          <div class="mt-8 flex flex-wrap gap-3">
            <NuxtLink to="/properties" class="btn-secondary">Explore Properties</NuxtLink>
            <NuxtLink to="/book-inspection" class="btn border border-white/60 bg-white/10 text-white backdrop-blur hover:bg-white/20">Book an Inspection</NuxtLink>
          </div>
        </div>
      </div>

      <div v-if="heroSlides.length > 1" class="absolute bottom-6 left-1/2 flex -translate-x-1/2 gap-2" aria-label="Featured property slideshow">
        <button
          v-for="(slide, index) in heroSlides"
          :key="`${slide.url}-control`"
          class="h-2.5 rounded-full transition-all"
          :class="index === activeSlide ? 'w-8 bg-white' : 'w-2.5 bg-white/50 hover:bg-white/80'"
          :aria-label="`Show ${slide.name}`"
          :aria-current="index === activeSlide ? 'true' : undefined"
          @click="showSlide(index)"
        />
      </div>
    </section>

    <section class="border-b border-neutral-200 bg-white" aria-label="Lexshield at a glance">
      <div class="container-page flex divide-x divide-neutral-200 py-5 text-center sm:py-8">
        <div class="min-w-0 flex-1 px-1 py-2 sm:px-4">
          <strong class="block text-xl font-extrabold text-primary-800 sm:text-4xl">1,000+</strong>
          <span class="mt-1 block text-[9px] font-semibold uppercase leading-tight tracking-wide text-neutral-500 sm:text-xs sm:tracking-[0.16em]">Allocations</span>
        </div>
        <div class="min-w-0 flex-1 px-1 py-2 sm:px-4">
          <strong class="block text-xl font-extrabold text-primary-800 sm:text-4xl">600+</strong>
          <span class="mt-1 block text-[9px] font-semibold uppercase leading-tight tracking-wide text-neutral-500 sm:text-xs sm:tracking-[0.16em]">Customers</span>
        </div>
        <div class="min-w-0 flex-1 px-1 py-2 sm:px-4">
          <strong class="block text-xl font-extrabold text-primary-800 sm:text-4xl">95%</strong>
          <span class="mt-1 block text-[9px] font-semibold uppercase leading-tight tracking-wide text-neutral-500 sm:text-xs sm:tracking-[0.16em]">Customer Satisfaction Rate</span>
        </div>
      </div>
    </section>

    <section class="section">
      <div class="container-page">
        <div class="flex items-end justify-between gap-4">
          <div><p class="text-sm font-semibold uppercase tracking-wider text-primary-700">Now selling</p><h2 class="mt-2 text-3xl text-neutral-900">Featured Properties</h2></div>
          <NuxtLink to="/properties" class="text-sm font-semibold text-primary-700">View all →</NuxtLink>
        </div>
        <div v-if="pending" class="mt-8 text-neutral-500">Loading properties…</div>
        <div v-else-if="properties?.length" class="mt-8 grid gap-6 md:grid-cols-2 lg:grid-cols-3"><PropertyCard v-for="property in properties" :key="property.id" :property="property" /></div>
        <p v-else class="mt-8 rounded-xl bg-neutral-100 p-6 text-neutral-600">Featured properties will appear here once the database migration is applied.</p>
      </div>
    </section>

    <section class="section bg-primary-50">
      <div class="container-page grid items-center gap-10 lg:grid-cols-2 lg:gap-14">
        <div>
          <p class="text-sm font-semibold uppercase tracking-[0.18em] text-primary-700">About Lexshield</p>
          <h2 class="mt-3 text-3xl text-neutral-900 sm:text-4xl">Who Are We?</h2>
          <div class="mt-5 space-y-4 text-base leading-8 text-neutral-600 sm:text-lg">
            <p>
              Lexshield Properties is a trusted real estate company in Nigeria, specialising in landed properties and investment opportunities. Whether you are buying for the first time or investing, we make the process easy and transparent.
            </p>
            <p>
              With Lexshield, you are not just buying land you are building a future with a trusted partner.
            </p>
          </div>
          <NuxtLink to="/about" class="btn-primary mt-7">Learn More About Us</NuxtLink>
        </div>

        <div class="overflow-hidden rounded-2xl bg-primary-950 shadow-xl ring-1 ring-black/10">
          <div class="aspect-video">
            <iframe
              v-if="companyVideoUrl"
              :src="companyVideoUrl"
              title="Lexshield Properties is committed to curbing fraudulent activities within the real estate sector."
              class="h-full w-full"
              loading="lazy"
              allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
              referrerpolicy="strict-origin-when-cross-origin"
              allowfullscreen
            />
            <div v-else class="flex h-full flex-col items-center justify-center bg-gradient-to-br from-primary-900 to-primary-700 p-8 text-center text-white">
              <svg class="h-14 w-14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" aria-hidden="true"><circle cx="12" cy="12" r="9"/><path d="m10 8 6 4-6 4Z" fill="currentColor"/></svg>
              <p class="mt-4 font-semibold">Discover the Lexshield story</p>
              <p class="mt-1 text-sm text-primary-200">Company video coming soon</p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="section bg-white">
      <div class="container-page">
        <div class="mx-auto max-w-2xl text-center">
          <p class="text-sm font-semibold uppercase tracking-[0.18em] text-primary-700">The Lexshield Difference</p>
          <h2 class="mt-3 text-3xl text-neutral-900 sm:text-4xl">Why Choose Us?</h2>
          <p class="mt-4 leading-7 text-neutral-600">We combine local property expertise, carefully selected locations and a straightforward buying experience to help you invest with confidence.</p>
        </div>

        <div class="mt-10 grid gap-5 sm:grid-cols-2 lg:grid-cols-4">
          <article
            v-for="(benefit, index) in benefits"
            :key="benefit.title"
            class="group relative overflow-hidden rounded-2xl border border-neutral-200 bg-white p-6 shadow-sm transition duration-300 hover:-translate-y-1 hover:border-primary-300 hover:shadow-xl"
          >
            <span class="absolute right-4 top-3 text-5xl font-extrabold text-primary-50 transition group-hover:text-primary-100" aria-hidden="true">0{{ index + 1 }}</span>
            <div class="relative flex h-12 w-12 items-center justify-center rounded-xl bg-primary-100 text-primary-700 transition group-hover:bg-primary-700 group-hover:text-white">
              <component :is="benefit.icon" class="h-6 w-6" />
            </div>
            <h3 class="relative mt-5 text-xl text-neutral-900">{{ benefit.title }}</h3>
            <p class="relative mt-3 text-sm leading-7 text-neutral-600">{{ benefit.description }}</p>
          </article>
        </div>

        <div class="mt-10 flex flex-col items-center justify-between gap-5 rounded-2xl bg-primary-900 px-6 py-7 text-center text-white sm:flex-row sm:text-left">
          <div><h3 class="text-2xl">Ready to find the right property?</h3><p class="mt-1 text-primary-200">Explore current opportunities or speak directly with a Lexshield advisor.</p></div>
          <div class="flex shrink-0 flex-wrap justify-center gap-3"><NuxtLink to="/properties" class="btn-secondary">View Properties</NuxtLink><a :href="advisorWhatsApp" target="_blank" rel="noopener" class="btn border border-white/40 bg-white/10 text-white hover:bg-white/20">Talk to an Advisor</a></div>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup lang="ts">
import { BadgeCheck, MapPin, ShieldCheck, WalletCards } from 'lucide-vue-next'

const { list } = useProperties()
const companyVideoUrl = useRuntimeConfig().public.companyVideoUrl
const { buildUrl } = useWhatsApp()
const advisorWhatsApp = computed(() => buildUrl())
const benefits = [
  { icon: BadgeCheck, title: 'Experienced Team', description: 'Our team brings years of practical experience and a strong understanding of Nigeria’s real estate market, helping you assess every opportunity with greater clarity.' },
  { icon: MapPin, title: 'Prime Locations', description: 'We focus on promising residential and commercial locations, including Mowe-Ofada, Ibeju-Lekki and Ibadan.' },
  { icon: WalletCards, title: 'Flexible Payment Plans', description: 'Competitive pricing and structured payment options make it easier to choose a property plan that fits your budget.' },
  { icon: ShieldCheck, title: 'Transparent Process', description: 'We keep each stage simple and straightforward, so you understand the property, pricing and next steps before making a decision.' },
]
const { data: properties, pending } = useAsyncData('featured-properties', () => list({ featured: true }))
const activeSlide = ref(0)
let slideTimer: ReturnType<typeof setInterval> | undefined

const heroSlides = computed(() => {
  const seen = new Set<string>()
  return (properties.value || []).flatMap(property => {
    const images = [
      ...(property.property_images || []).sort((a, b) => Number(b.is_primary) - Number(a.is_primary) || a.sort_order - b.sort_order).map(image => image.image_url),
      property.featured_image,
    ]
    return images.filter((url): url is string => Boolean(url) && !seen.has(url!)).map(url => {
      seen.add(url)
      return { url, name: property.name }
    })
  }).slice(0, 6)
})

function showSlide(index: number) {
  activeSlide.value = index
  restartSlideshow()
}

function restartSlideshow() {
  if (slideTimer) clearInterval(slideTimer)
  if (heroSlides.value.length < 2 || window.matchMedia('(prefers-reduced-motion: reduce)').matches) return
  slideTimer = setInterval(() => {
    activeSlide.value = (activeSlide.value + 1) % heroSlides.value.length
  }, 6000)
}

onMounted(restartSlideshow)
onBeforeUnmount(() => {
  if (slideTimer) clearInterval(slideTimer)
})
watch(() => heroSlides.value.length, () => {
  activeSlide.value = 0
  if (import.meta.client) restartSlideshow()
})

useSeoMeta({ title: 'Lexshield Properties Limited', description: 'Verified properties and real estate investments across Lagos, Ogun, and Oyo State.' })
</script>
