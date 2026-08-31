<template>
  <article class="card overflow-hidden">
    <NuxtLink :to="`/property/${property.slug}`" class="block bg-primary-50">
      <NuxtImg v-if="image" :src="image" :alt="property.name" class="h-52 w-full object-cover" loading="lazy" />
      <div v-else class="flex h-52 items-center justify-center bg-gradient-to-br from-primary-800 to-primary-600 px-6 text-center text-2xl font-bold text-white">
        {{ property.name }}
      </div>
    </NuxtLink>
    <div class="p-5">
      <div class="flex items-start justify-between gap-3">
        <div>
          <h3 class="text-xl text-neutral-900">{{ property.name }}</h3>
          <p class="mt-1 text-sm text-neutral-500">{{ shortLocation }}</p>
        </div>
        <span class="badge-success shrink-0">Now Selling</span>
      </div>
      <p class="mt-4 text-2xl font-extrabold text-primary-800">From {{ money(property.price_from) }}</p>
      <p class="mt-2 text-sm text-neutral-600">{{ optionSummary }}</p>
      <p v-if="property.initial_deposit" class="mt-1 text-sm font-semibold text-neutral-700">Initial Deposit: {{ money(property.initial_deposit) }}</p>
      <div class="mt-5 flex gap-2">
        <NuxtLink :to="`/property/${property.slug}`" class="btn-primary flex-1 px-3">View Property</NuxtLink>
        <a :href="whatsapp" target="_blank" rel="noopener" class="btn-whatsapp px-3" @click="trackWhatsApp">WhatsApp</a>
      </div>
    </div>
  </article>
</template>

<script setup lang="ts">
import type { Property } from '~/types/database'
const props = defineProps<{ property: Property }>()
const { buildUrl } = useWhatsApp()
const image = computed(() => props.property.property_images?.find(item => item.is_primary)?.image_url || props.property.featured_image)
const shortLocation = computed(() => [props.property.city, props.property.state].filter(Boolean).join(', '))
const optionSummary = computed(() => props.property.property_plot_options?.map(option => option.label).join(' • ') || '')
const whatsapp = computed(() => buildUrl(props.property))
function money(value: number | null) {
  if (!value) return 'Contact us'
  if (value >= 1000000) return `₦${Number((value / 1000000).toFixed(2))}M`
  return new Intl.NumberFormat('en-NG', { style: 'currency', currency: 'NGN', maximumFractionDigits: 0 }).format(value)
}
function trackWhatsApp() {
  if (import.meta.client) window.dataLayer?.push({ event: 'whatsapp_click', property_name: props.property.name, location: props.property.city })
}
</script>
