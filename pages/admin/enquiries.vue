<template>
  <div class="container-page py-10">
    <p class="text-sm font-semibold uppercase tracking-wider text-primary-700">Sales enquiries</p>
    <div class="mt-2 flex flex-wrap items-center justify-between gap-4">
      <h1 class="text-3xl">Client Enquiries</h1>
      <button class="btn-outline" :disabled="loading" @click="load">{{ loading ? 'Refreshing…' : 'Refresh Enquiries' }}</button>
    </div>
    <p class="mt-3 text-neutral-600">View details submitted through estate and contact forms, and manage sales follow-up.</p>
    <div class="card mt-7 grid gap-4 p-5 sm:grid-cols-3">
      <div><label for="enquiry-search" class="label">Search clients</label><input id="enquiry-search" v-model.trim="search" class="input" placeholder="Name, phone, email or message" /></div>
      <div><label for="enquiry-estate" class="label">Estate</label><select id="enquiry-estate" v-model="estate" class="input"><option value="">All estates</option><option v-for="name in estates" :key="name" :value="name">{{ name }}</option></select></div>
      <div><label for="enquiry-status" class="label">Follow-up status</label><select id="enquiry-status" v-model="status" class="input"><option value="">All statuses</option><option v-for="value in statuses" :key="value" :value="value">{{ statusLabel(value) }}</option></select></div>
    </div>
    <p v-if="errorMessage" role="alert" class="mt-5 rounded-lg bg-error-50 p-4 text-error-800">{{ errorMessage }}</p>
    <p v-if="loading && !leads.length" class="mt-8 text-neutral-600">Loading enquiries…</p>
    <template v-else>
      <p class="mt-6 text-sm text-neutral-600">{{ filtered.length }} {{ filtered.length === 1 ? 'enquiry' : 'enquiries' }}</p>
      <div class="mt-4 space-y-5">
        <article v-for="lead in filtered" :key="lead.id" class="card p-6">
          <div class="flex flex-wrap items-start justify-between gap-4">
            <div><h2 class="text-xl text-neutral-900">{{ lead.name }}</h2><p class="mt-1 text-sm text-neutral-500">{{ dateLabel(lead.created_at) }} · {{ lead.source === 'property_video_enquiry' ? 'Estate enquiry form' : lead.source === 'contact_page' ? 'Contact form' : lead.source }}</p></div>
            <div><label :for="`status-${lead.id}`" class="label">Follow-up status</label><select :id="`status-${lead.id}`" :value="lead.status" class="input" :disabled="saving === lead.id" @change="updateStatus(lead, ($event.target as HTMLSelectElement).value)"><option v-if="!statuses.includes(lead.status)" :value="lead.status">{{ statusLabel(lead.status) }}</option><option v-for="value in statuses" :key="value" :value="value">{{ statusLabel(value) }}</option></select></div>
          </div>
          <div class="mt-5 grid gap-5 md:grid-cols-2">
            <div class="space-y-2 text-sm"><p><strong>Phone / WhatsApp:</strong> <a :href="`tel:${lead.phone.replace(/[^+\d]/g, '')}`" class="text-primary-700 underline">{{ lead.phone }}</a></p><p v-if="lead.email"><strong>Email:</strong> <a :href="`mailto:${lead.email}`" class="break-all text-primary-700 underline">{{ lead.email }}</a></p><p><strong>Estate:</strong> {{ lead.property_name || 'General enquiry' }}</p><p v-if="lead.property_location"><strong>Location:</strong> {{ lead.property_location }}</p><p v-if="lead.property_price"><strong>Advertised price:</strong> {{ lead.property_price }}</p></div>
            <div class="rounded-xl bg-neutral-50 p-4"><h3 class="text-sm">Client message</h3><p class="mt-2 whitespace-pre-wrap break-words text-sm leading-7 text-neutral-700">{{ lead.message || 'No message provided.' }}</p></div>
          </div>
        </article>
      </div>
      <p v-if="!filtered.length && !errorMessage" class="card mt-5 p-8 text-center text-neutral-600">{{ leads.length ? 'No enquiries match these filters.' : 'No client enquiries yet. Submitted estate forms will appear here.' }}</p>
    </template>
  </div>
</template>

<script setup lang="ts">
import type { Lead } from '~/types/database'
definePageMeta({ layout: 'admin', middleware: 'admin-auth' })
useSeoMeta({ title: 'Client Enquiries | Admin', robots: 'noindex,nofollow' })
const leads = ref<Lead[]>([])
const loading = ref(false)
const errorMessage = ref('')
const saving = ref('')
const search = ref('')
const estate = ref('')
const status = ref('')
const statuses = ['new', 'contacted', 'qualified', 'closed']
const estates = computed(() => [...new Set(leads.value.map(lead => lead.property_name).filter((name): name is string => Boolean(name)))].sort())
const filtered = computed(() => leads.value.filter(lead =>
  (!estate.value || lead.property_name === estate.value) &&
  (!status.value || lead.status === status.value) &&
  (!search.value || [lead.name, lead.phone, lead.email, lead.message, lead.property_name].some(value => value?.toLowerCase().includes(search.value.toLowerCase())))
))
function statusLabel(value: string) { return value.charAt(0).toUpperCase() + value.slice(1).replace(/_/g, ' ') }
function dateLabel(value: string) { return new Intl.DateTimeFormat('en-NG', { dateStyle: 'medium', timeStyle: 'short', timeZone: 'Africa/Lagos' }).format(new Date(value)) }
async function load() {
  loading.value = true
  errorMessage.value = ''
  try {
    const { data, error } = await useSupabase().from('leads').select('*').order('created_at', { ascending: false })
    if (error) throw error
    leads.value = (data || []) as Lead[]
  } catch { errorMessage.value = 'Could not load enquiries. Please refresh or sign in again.' }
  finally { loading.value = false }
}
async function updateStatus(lead: Lead, value: string) {
  if (saving.value || !statuses.includes(value)) return
  saving.value = lead.id
  errorMessage.value = ''
  try {
    const { data, error } = await useSupabase().from('leads').update({ status: value }).eq('id', lead.id).select('id').single()
    if (error || !data) throw error || new Error('Enquiry was not updated')
    lead.status = value
  } catch { errorMessage.value = 'Could not update this enquiry. Please refresh and try again.' }
  finally { saving.value = '' }
}
onMounted(load)
</script>
