<template>
  <section class="section">
    <article class="container-page max-w-4xl">
      <p class="text-sm font-semibold uppercase tracking-wider text-primary-700">Legal</p>
      <h1 class="mt-2 text-4xl text-neutral-900">Privacy Policy</h1>
      <p class="mt-3 text-sm text-neutral-500">Last updated: 31 August 2026</p>

      <div class="mt-10 space-y-8 leading-7 text-neutral-600">
        <section><h2 class="text-2xl text-neutral-900">Information we collect</h2><p class="mt-3">We may collect information you provide when you make a property enquiry, request an inspection or contact us, including your name, contact details, property interests and message. We may also receive basic technical and usage information when you use this website.</p></section>
        <section><h2 class="text-2xl text-neutral-900">How we use information</h2><p class="mt-3">We use information to respond to enquiries, arrange inspections, provide requested property information, operate and improve the website, maintain security and comply with applicable legal obligations.</p></section>
        <section><h2 class="text-2xl text-neutral-900">Sharing and retention</h2><p class="mt-3">We do not sell your personal information. We may share it with service providers that help us operate the website or deliver requested services, and where disclosure is required by law. We retain information only for as long as reasonably necessary for these purposes.</p></section>
        <section><h2 class="text-2xl text-neutral-900">Your choices</h2><p class="mt-3">You may ask to access, correct or delete personal information we hold about you, subject to applicable law. You can also choose not to provide optional information, although this may limit our ability to respond to a request.</p></section>
        <section><h2 class="text-2xl text-neutral-900">Contact us</h2><p class="mt-3">For privacy questions or requests, email <a :href="`mailto:${config.public.email}`" class="font-semibold text-primary-700 hover:text-primary-800">{{ config.public.email }}</a>.</p></section>
      </div>
    </article>
  </section>
</template>

<script setup lang="ts">
const config = useRuntimeConfig()
const canonical = `${config.public.siteUrl.replace(/\/$/, '')}/privacy`
useSeoMeta({ title: 'Privacy Policy | Lexshield Properties', description: 'How Lexshield Properties collects, uses and protects information provided through this website.', ogUrl: canonical })
useHead({ link: [{ rel: 'canonical', href: canonical }] })
</script>
