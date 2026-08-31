<template>
  <div class="fixed inset-x-0 bottom-0 z-40 border-t border-neutral-200 bg-white p-3 shadow-lg md:hidden">
    <div class="mx-auto flex max-w-lg gap-3">
      <a
        :href="phoneLink"
        class="flex flex-1 items-center justify-center gap-2 rounded-lg border border-primary-700 px-4 py-3 text-sm font-semibold text-primary-700"
        @click="track('phone_click')"
      >
        <PhoneIcon class="h-4 w-4" />
        Call
      </a>
      <a
        :href="whatsappLink"
        target="_blank"
        rel="noopener"
        class="flex flex-1 items-center justify-center gap-2 rounded-lg bg-[#25D366] px-4 py-3 text-sm font-semibold text-white"
        @click="track('whatsapp_click')"
      >
        <WhatsAppIcon class="h-4 w-4" />
        WhatsApp
      </a>
    </div>
  </div>
</template>

<script setup lang="ts">
import { MessageCircle as WhatsAppIcon, Phone as PhoneIcon } from 'lucide-vue-next'

const { buildUrl } = useWhatsApp()
const { buildTelLink } = usePhone()

const phoneLink = computed(() => buildTelLink())
const whatsappLink = computed(() => buildUrl())

function track(event: 'phone_click' | 'whatsapp_click') {
  if (import.meta.client) {
    window.dataLayer?.push({ event })
  }
}
</script>
