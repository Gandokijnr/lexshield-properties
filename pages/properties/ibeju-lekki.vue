<template>
  <section class="section">
    <div class="container-page">
      <p class="text-sm font-semibold uppercase tracking-wider text-primary-700">Lagos State</p>
      <h1 class="mt-2 text-4xl text-neutral-900">Land and Property for Sale in Ibeju-Lekki</h1>
      <p class="mt-4 max-w-3xl text-neutral-600">Explore available land and estate properties in the Ibeju-Lekki corridor, with clearly presented plot sizes and payment plans.</p>
      <div v-if="properties?.length" class="mt-10 grid gap-6 md:grid-cols-2 lg:grid-cols-3">
        <PropertyCard v-for="property in properties" :key="property.id" :property="property" />
      </div>
      <p v-else-if="!pending" class="mt-8">No active properties are currently listed.</p>
    </div>
  </section>
</template>

<script setup lang="ts">
const { list } = useProperties()
const { data: properties, pending } = useAsyncData('ibeju-lekki-properties', () => list({ locationSlug: 'ibeju-lekki' }))
const config = useRuntimeConfig()
const canonical = `${config.public.siteUrl.replace(/\/$/, '')}/properties/ibeju-lekki`

useSeoMeta({
  title: 'Land for Sale in Ibeju-Lekki | Lexshield Properties',
  description: 'Explore available land and estate property for sale in Ibeju-Lekki, Lagos State.',
  ogUrl: canonical,
})
useHead({ link: [{ rel: 'canonical', href: canonical }] })
</script>
