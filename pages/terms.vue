<template>
  <section class="section">
    <article class="container-page max-w-4xl">
      <p class="text-sm font-semibold uppercase tracking-wider text-primary-700">Legal</p>
      <h1 class="mt-2 text-4xl text-neutral-900">Terms of Use</h1>
      <p class="mt-3 text-sm text-neutral-500">Last updated: 31 August 2026</p>

      <div class="mt-10 space-y-8 leading-7 text-neutral-600">
        <section><h2 class="text-2xl text-neutral-900">Using this website</h2><p class="mt-3">By using this website, you agree to use it lawfully and not to interfere with its operation, attempt unauthorised access or submit false or misleading information.</p></section>
        <section><h2 class="text-2xl text-neutral-900">Property information</h2><p class="mt-3">Property availability, prices, plot details, payment plans and other commercial terms may change. Website content is general information and does not constitute a binding offer. Please confirm current details with our team before making a decision or payment.</p></section>
        <section><h2 class="text-2xl text-neutral-900">Due diligence</h2><p class="mt-3">Prospective buyers should inspect properties, review relevant documents and obtain appropriate independent professional advice. Nothing on this website replaces legal, financial, surveying or other professional advice.</p></section>
        <section><h2 class="text-2xl text-neutral-900">Intellectual property and external links</h2><p class="mt-3">Unless stated otherwise, this website's content belongs to Lexshield Properties Limited and may not be reproduced for commercial use without permission. Links to third-party websites are provided for convenience, and we are not responsible for their content or availability.</p></section>
        <section><h2 class="text-2xl text-neutral-900">Contact us</h2><p class="mt-3">Questions about these terms can be sent to <a :href="`mailto:${config.public.email}`" class="font-semibold text-primary-700 hover:text-primary-800">{{ config.public.email }}</a>.</p></section>
      </div>
    </article>
  </section>
</template>

<script setup lang="ts">
const config = useRuntimeConfig()
const canonical = `${config.public.siteUrl.replace(/\/$/, '')}/terms`
useSeoMeta({ title: 'Terms of Use | Lexshield Properties', description: 'Terms governing use of the Lexshield Properties website and its property information.', ogUrl: canonical })
useHead({ link: [{ rel: 'canonical', href: canonical }] })
</script>
