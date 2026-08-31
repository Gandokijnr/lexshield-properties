<template>
  <div class="flex min-h-screen items-center justify-center bg-primary-950 p-4">
    <form class="w-full max-w-md rounded-2xl bg-white p-7 shadow-2xl" @submit.prevent="register">
      <p class="text-sm font-semibold uppercase tracking-wider text-primary-700">Lexshield Administration</p>
      <h1 class="mt-2 text-3xl text-neutral-900">Register administrator</h1>
      <p class="mt-2 text-sm text-neutral-600">Create a confirmed account for the private administration area.</p>

      <div v-if="created" class="mt-7 rounded-lg bg-success-50 p-4 text-success-800">
        Administrator created. You can now <NuxtLink to="/admin/login" class="font-semibold underline">sign in</NuxtLink>.
      </div>

      <div v-else class="mt-7 space-y-5">
        <div><label class="label" for="admin-email">Email</label><input id="admin-email" v-model.trim="form.email" class="input" type="email" autocomplete="email" required /></div>
        <div><label class="label" for="admin-password">Password</label><input id="admin-password" v-model="form.password" class="input" type="password" autocomplete="new-password" minlength="8" required /></div>
        <div><label class="label" for="admin-password-confirmation">Confirm password</label><input id="admin-password-confirmation" v-model="confirmation" class="input" type="password" autocomplete="new-password" minlength="8" required /></div>
        <div><label class="label" for="setup-token">Setup token</label><input id="setup-token" v-model="form.setupToken" class="input" type="password" autocomplete="off" required /></div>
        <p v-if="errorMessage" role="alert" class="rounded-lg bg-error-50 p-3 text-sm text-error-800">{{ errorMessage }}</p>
        <button class="btn-primary w-full" :disabled="busy">{{ busy ? 'Creating administrator…' : 'Create Administrator' }}</button>
      </div>
    </form>
  </div>
</template>

<script setup lang="ts">
definePageMeta({ layout: false })

const form = reactive({ email: 'abahgideon111@gmail.com', password: '', setupToken: '' })
const confirmation = ref('')
const busy = ref(false)
const created = ref(false)
const errorMessage = ref('')

async function register() {
  errorMessage.value = ''
  if (form.password !== confirmation.value) {
    errorMessage.value = 'Passwords do not match.'
    return
  }

  busy.value = true
  try {
    await $fetch('/api/admin/register', { method: 'POST', body: form })
    form.password = ''
    form.setupToken = ''
    confirmation.value = ''
    created.value = true
  } catch (error: any) {
    errorMessage.value = error?.data?.statusMessage || error?.message || 'Could not create the administrator.'
  } finally {
    busy.value = false
  }
}

useSeoMeta({ title: 'Register Administrator | Lexshield', robots: 'noindex,nofollow' })
</script>
