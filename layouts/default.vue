<template>
  <div class="flex min-h-screen flex-col bg-neutral-50">
    <AppHeader />
    <main class="flex-1" :class="showStickyBar ? 'pb-20 md:pb-0' : ''">
      <slot />
    </main>
    <AppFooter />
    <StickyMobileBar v-if="showStickyBar" />
    <ClientOnly><EstatePromotion /></ClientOnly>
  </div>
</template>

<script setup lang="ts">
const route = useRoute()
const showStickyBar = computed(() => {
  return route.path.startsWith('/property/')
})
</script>
