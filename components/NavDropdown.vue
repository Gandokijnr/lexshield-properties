<template>
  <nav class="relative hidden lg:block">
    <button class="flex items-center gap-1 rounded-lg px-3 py-2 text-sm font-medium text-neutral-700 hover:bg-neutral-100" @mouseenter="open = true" @mouseleave="open = false">
      {{ label }}
      <ChevronDownIcon class="h-4 w-4" />
    </button>
    <Transition name="slide-down">
      <div
        v-if="open"
        class="absolute left-0 top-full z-50 w-56 rounded-lg border border-neutral-200 bg-white py-2 shadow-lg"
        @mouseenter="open = true"
        @mouseleave="open = false"
      >
        <NuxtLink
          v-for="item in items"
          :key="item.to"
          :to="item.to"
          class="block px-4 py-2 text-sm text-neutral-700 hover:bg-primary-50 hover:text-primary-700"
        >
          {{ item.label }}
        </NuxtLink>
      </div>
    </Transition>
  </nav>
</template>

<script setup lang="ts">
import { ChevronDown as ChevronDownIcon } from 'lucide-vue-next'

defineProps<{
  label: string
  items: { label: string; to: string }[]
}>()

const open = ref(false)
</script>
