<template>
  <dialog ref="dialog" aria-labelledby="promotion-title" class="m-auto w-[calc(100%_-_2rem)] max-w-md overflow-hidden rounded-2xl bg-white p-0 shadow-2xl backdrop:bg-black/60" @close="onClose" @cancel="dismiss" @click="onBackdrop">
    <div class="relative">
      <div class="flex items-center justify-between gap-3 px-4 py-3">
        <h2 id="promotion-title" class="text-base text-neutral-900">Emirates Parks &amp; Gardens</h2>
        <button type="button" class="rounded-lg p-2 text-neutral-600 hover:bg-neutral-100 focus-visible:ring-2 focus-visible:ring-primary-700" aria-label="Close promotion" autofocus @click="dismiss"><X class="h-5 w-5" /></button>
      </div>
      <div class="max-h-[calc(100dvh-13rem)] overflow-y-auto">
        <img src="/emirates-promotional-flier.webp" width="1025" height="1280" alt="Emirates Parks and Gardens promotional flyer: plots at Ewu-Ode, Mowe-Ofada, with prices, payment plans and an initial deposit of ₦1 million." class="h-auto w-full" />
      </div>
      <div class="grid gap-2 p-4 sm:grid-cols-2">
        <a :href="whatsappUrl" target="_blank" rel="noopener" class="btn-whatsapp px-3" @click="enquire">Enquire on WhatsApp</a>
        <NuxtLink to="/property/emirates-parks-gardens-mowe-ofada" class="btn-primary px-3" @click="dismiss">View Estate</NuxtLink>
      </div>
    </div>
  </dialog>
</template>

<script setup lang="ts">
import { X } from 'lucide-vue-next'

const dialog = ref<HTMLDialogElement | null>(null)
const route = useRoute()
const { buildUrl } = useWhatsApp()
const whatsappUrl = computed(() => buildUrl({ name: 'Emirates Parks & Gardens', location_name: 'Ewu-Ode, Mowe-Ofada', price_display: '₦8.25M' }))
const seen = useState('emirates-promotion-seen', () => false)
const storageKey = 'lexshield-emirates-promotion-seen'
let timer: ReturnType<typeof setTimeout> | undefined
let ready = false
let previousOverflow = ''
let locked = false

function remember() {
  seen.value = true
  try { sessionStorage.setItem(storageKey, '1') } catch { /* In-memory state still prevents repeats. */ }
}
function show() {
  if (!ready || seen.value || document.visibilityState !== 'visible') return
  if (/^\/(admin|contact|book-inspection)(\/|$)/.test(route.path)) return
  if (document.activeElement?.matches('input, textarea, select, [contenteditable="true"]')) return
  if (document.querySelector('dialog[open]')) return
  if (Array.from(document.querySelectorAll('video')).some(video => !video.paused && !video.ended)) return
  if (!dialog.value) return
  dialog.value.showModal()
  previousOverflow = document.body.style.overflow
  document.body.style.overflow = 'hidden'
  locked = true
  remember()
  window.dataLayer?.push({ event: 'promotion_view', property_name: 'Emirates Parks & Gardens' })
}
function onClose() {
  if (locked) document.body.style.overflow = previousOverflow
  locked = false
}
function dismiss() {
  dialog.value?.close()
  onClose()
}
function enquire() {
  window.dataLayer?.push({ event: 'whatsapp_click', source: 'estate_promotion', property_name: 'Emirates Parks & Gardens' })
  dismiss()
}
function onBackdrop(event: MouseEvent) {
  if (event.target !== dialog.value) return
  const bounds = dialog.value.getBoundingClientRect()
  if (event.clientX < bounds.left || event.clientX > bounds.right || event.clientY < bounds.top || event.clientY > bounds.bottom) dismiss()
}
onMounted(() => {
  try { if (sessionStorage.getItem(storageKey)) seen.value = true } catch { /* Storage may be unavailable. */ }
  if (seen.value) return
  timer = setTimeout(() => { ready = true; show() }, 5000)
  window.addEventListener('scroll', show, { passive: true })
  document.addEventListener('visibilitychange', show)
})
watch(() => route.path, () => { dismiss(); if (import.meta.client) nextTick(show) })
onBeforeUnmount(() => {
  clearTimeout(timer)
  window.removeEventListener('scroll', show)
  document.removeEventListener('visibilitychange', show)
  onClose()
})
</script>
