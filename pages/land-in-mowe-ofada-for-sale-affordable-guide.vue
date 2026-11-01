<template>
  <div>
    <section class="bg-primary-950 py-12 text-white sm:py-16">
      <div class="container-page">
        <nav class="text-sm text-primary-200" aria-label="Breadcrumb">
          <NuxtLink to="/" class="hover:text-white">Home</NuxtLink>
          <span class="mx-2" aria-hidden="true">/</span>
          <NuxtLink to="/blog" class="hover:text-white">Properties Guide</NuxtLink>
          <span class="mx-2" aria-hidden="true">/</span>
          <span class="text-white">Mowe–Ofada land guide</span>
        </nav>
        <p class="mt-8 text-sm font-semibold uppercase tracking-[0.18em] text-primary-200">Ogun State Property Guide</p>
        <h1 class="mt-3 max-w-4xl text-4xl sm:text-5xl lg:text-6xl">{{ articleTitle }}</h1>
        <p class="mt-5 max-w-3xl text-lg leading-8 text-primary-100">{{ articleSummary }}</p>
        <div class="mt-7 flex flex-wrap gap-3 text-sm text-primary-200">
          <span>By Lexshield Properties</span>
          <span aria-hidden="true">·</span>
          <time datetime="2025-05-30">Published May 30, 2025</time>
          <span aria-hidden="true">·</span>
          <span>Updated November 2026</span>
        </div>
      </div>
    </section>

    <figure class="bg-neutral-100">
      <img
        :src="featuredImage"
        alt="Gated estate land for sale in Mowe–Ofada, Ogun State"
        class="mx-auto max-h-[560px] w-full max-w-6xl object-cover"
        fetchpriority="high"
      />
      <figcaption class="container-page py-2 text-sm text-neutral-500">Confirm current availability, plot dimensions, title and full costs for the specific estate.</figcaption>
    </figure>

    <main class="container-page grid gap-10 py-10 lg:grid-cols-[minmax(0,1fr)_300px] lg:py-14">
      <article class="min-w-0">
        <p class="text-xl font-medium leading-8 text-neutral-700">
          Mowe and Ofada are in Ogun State, along the Lagos–Ibadan Expressway corridor. Buyers compare the area for residential, commuting and longer-term land-holding plans. This guide outlines indicative figures supplied for the article and practical checks to make before choosing a plot.
        </p>

        <div class="mt-6 rounded-xl border border-warning-200 bg-warning-50 p-5 text-sm leading-6 text-warning-900">
          <strong>Price and investment disclaimer:</strong> The prices, deposits and estate features below are supplied estimates, not verified current listings or valuations. Other listing information for Mowe may show different prices. Confirm the date, plot size, title, fees, payment terms and availability directly. No location or infrastructure project guarantees appreciation, safety or a return on investment.
        </div>

        <div class="mt-7 rounded-2xl bg-primary-50 p-6">
          <h2 class="text-xl text-neutral-900">Looking for a plot in Mowe or Ofada?</h2>
          <p class="mt-2 leading-7 text-neutral-700">Tell our team your budget and intended use. Request current estate details and arrange an inspection before making a decision.</p>
          <div class="mt-4 flex flex-wrap gap-3">
            <NuxtLink to="/properties/mowe-ofada" class="btn-primary">Explore Mowe–Ofada properties</NuxtLink>
            <NuxtLink to="/contact" class="btn-outline">Request current details</NuxtLink>
          </div>
        </div>

        <nav class="mt-8 rounded-xl bg-neutral-50 p-5" aria-label="Article contents">
          <h2 class="text-lg text-neutral-900">In this guide</h2>
          <ul class="mt-3 grid gap-2 text-sm text-primary-700 sm:grid-cols-2">
            <li><a href="#why-mowe-ofada" class="hover:underline">Why compare Mowe–Ofada?</a></li>
            <li><a href="#indicative-prices" class="hover:underline">Indicative price ranges</a></li>
            <li><a href="#estate-options" class="hover:underline">Estate options</a></li>
            <li><a href="#location-facts" class="hover:underline">Location facts</a></li>
            <li><a href="#buyer-checklist" class="hover:underline">Buyer due diligence</a></li>
            <li><a href="#mowe-faqs" class="hover:underline">Frequently asked questions</a></li>
          </ul>
        </nav>

        <section id="why-mowe-ofada" class="mt-10 scroll-mt-28">
          <h2 class="text-2xl text-neutral-900 sm:text-3xl">Why compare land in Mowe and Ofada?</h2>
          <p class="mt-4 leading-7 text-neutral-700">
            Mowe and Ofada are Ogun State communities connected to the broader Lagos–Ibadan Expressway corridor. The right location depends on your commute, services, access, budget and intended use. Visit the exact site and compare the actual journey and surrounding development rather than relying on general distance or travel-time claims.
          </p>
          <p class="mt-3 leading-7 text-neutral-700">
            Consider whether a plot is ready for your intended use, whether access is legally and physically available, and what additional costs may be needed for infrastructure. Nearby landmarks or proposed projects do not establish the value or legal status of an individual parcel.
          </p>
        </section>

        <section id="indicative-prices" class="mt-10 scroll-mt-28">
          <h2 class="text-2xl text-neutral-900 sm:text-3xl">How much is land in Mowe, Ibafo and Ofada?</h2>
          <p class="mt-4 leading-7 text-neutral-700">
            The following figures were supplied as broad 2026 estimates. Prices depend on the exact community, plot size, title, access, infrastructure and payment plan; these ranges are not live offers.
          </p>
          <div class="mt-5 overflow-x-auto rounded-xl border border-neutral-200">
            <table class="w-full min-w-[600px] border-collapse text-left text-sm">
              <thead class="bg-primary-50 text-neutral-900">
                <tr>
                  <th scope="col" class="p-4 font-bold">Land category</th>
                  <th scope="col" class="p-4 font-bold">Supplied indicative range</th>
                  <th scope="col" class="p-4 font-bold">Potential buyer use</th>
                </tr>
              </thead>
              <tbody class="divide-y divide-neutral-200 text-neutral-700">
                <tr>
                  <td class="p-4 font-semibold">Budget locations, Ofada Road</td>
                  <td class="p-4">₦1 million–₦2.5 million</td>
                  <td class="p-4">Longer-term land holding</td>
                </tr>
                <tr>
                  <td class="p-4 font-semibold">Gated residential estates</td>
                  <td class="p-4">₦3.5 million–₦7.5 million</td>
                  <td class="p-4">Residential use or future build</td>
                </tr>
                <tr>
                  <td class="p-4 font-semibold">Commercial land near expressway</td>
                  <td class="p-4">₦120 million+ per acre</td>
                  <td class="p-4">Commercial or logistics use, subject to planning</td>
                </tr>
              </tbody>
            </table>
          </div>
          <p class="mt-3 text-sm leading-6 text-neutral-500">
            The source also cited around ₦4 million for 300-square-metre plots and ₦7.5 million for 600-square-metre plots in gated communities. These figures may not match the ranges above or current estate prices. Ask for a dated, itemized quotation for the exact plot.
          </p>
          <p class="mt-4 leading-7 text-neutral-700">
            Plot dimensions and payment schedules can differ even within one estate. Compare the total amount payable, statutory and estate fees, allocation terms, default provisions and refund conditions not only the deposit.
          </p>
        </section>

        <section id="estate-options" class="mt-10 scroll-mt-28">
          <h2 class="text-2xl text-neutral-900 sm:text-3xl">Estate options mentioned in the supplied guide</h2>
          <figure class="mt-5 overflow-hidden rounded-xl bg-neutral-100">
            <img
              src="https://www.lexshieldproperties.com/wp-content/uploads/2025/04/WhatsApp-Image-2026-02-15-at-12.04.42-PM-300x135.jpeg"
              alt="Estate development in the Mowe–Ofada area"
              class="max-h-[420px] w-full object-cover"
              loading="lazy"
            />
          </figure>
          <p class="mt-4 leading-7 text-neutral-700">
            The original material mentions the estates below. Details are presented as claims from that source and are not independently confirmed. Verify current ownership, availability, title, facilities and prices before relying on them.
          </p>
          <div class="mt-5 space-y-5">
            <div>
              <h3 class="text-xl text-neutral-900">Emirate Parks &amp; Gardens</h3>
              <p class="mt-2 leading-7 text-neutral-700">The supplied guide describes this as a Lexshield project and mentions serviced plots, solar streetlights and security. Request the current site plan, plot options, documentation and written details of facilities.</p>
              <NuxtLink to="/property/emirates-parks-gardens-mowe-ofada" class="mt-2 inline-flex font-semibold text-primary-700 hover:underline">View Emirate Parks &amp; Gardens listing →</NuxtLink>
            </div>
            <div>
              <h3 class="text-xl text-neutral-900">Evergreen Global Garden Estate</h3>
              <p class="mt-2 leading-7 text-neutral-700">The source mentions a Global C of O and 300-square-metre plots. Independently confirm the title and current offer with the seller and your lawyer.</p>
            </div>
            <div>
              <h3 class="text-xl text-neutral-900">Almond County Estate</h3>
              <p class="mt-2 leading-7 text-neutral-700">The source refers to a possible instalment plan. Request current written payment terms, fees and default or cancellation conditions.</p>
            </div>
            <div>
              <h3 class="text-xl text-neutral-900">Mowe Golf Town</h3>
              <p class="mt-2 leading-7 text-neutral-700">Confirm the exact location, developer, approvals, delivery status and any facilities directly before considering a purchase.</p>
            </div>
          </div>
        </section>

        <section id="location-facts" class="mt-10 scroll-mt-28">
          <h2 class="text-2xl text-neutral-900 sm:text-3xl">Is Mowe–Ibafo in Lagos or Ogun State?</h2>
          <p class="mt-4 leading-7 text-neutral-700">
            Mowe and Ibafo are in Ogun State, although they are connected to the Lagos region by the Lagos–Ibadan Expressway. Always confirm the property’s exact local government area, address and state in the survey and title documents. Do not assume a location’s legal jurisdiction from marketing descriptions.
          </p>
          <p class="mt-3 leading-7 text-neutral-700">
            You can consult the <a href="https://ogunstate.gov.ng/" target="_blank" rel="noopener noreferrer" class="font-semibold text-primary-700 hover:underline">Ogun State Government website</a> for general state information. For parcel-specific records and requirements, consult the relevant authorities and your independent property lawyer.
          </p>
        </section>

        <section id="buyer-checklist" class="mt-10 scroll-mt-28">
          <h2 class="text-2xl text-neutral-900 sm:text-3xl">Due diligence before buying land in Mowe–Ofada</h2>
          <ol class="mt-4 list-decimal space-y-3 pl-5 leading-7 text-neutral-700">
            <li>Have an independent property lawyer verify the seller’s authority, title documents, ownership chain, land status and required approvals.</li>
            <li>Ask a registered surveyor to identify the parcel, verify its size and boundaries, and compare the survey plan against the physical site.</li>
            <li>Check for acquisition, planning restrictions, encumbrances, disputes and access rights with the appropriate authorities.</li>
            <li>Visit the site and assess roads, drainage, utilities, surrounding land use and facilities that are actually present.</li>
            <li>Get the full price, fees, plot dimensions, payment terms, allocation process and refund or default terms in writing.</li>
            <li>Make traceable payments only to the verified recipient and retain signed agreements and receipts.</li>
          </ol>
          <p class="mt-4 leading-7 text-neutral-700">
            A C of O or survey label does not alone guarantee a safe purchase. Read our <NuxtLink to="/blog/how-to-verify-land-documents-nigeria" class="font-semibold text-primary-700 hover:underline">guide to verifying land documents</NuxtLink> for more due-diligence steps.
          </p>
        </section>

        <section class="mt-12 rounded-2xl bg-primary-900 p-6 text-white sm:p-8">
          <p class="text-sm font-semibold uppercase tracking-wider text-primary-200">Ready to compare current options?</p>
          <h2 class="mt-2 text-2xl sm:text-3xl">Request Mowe–Ofada property details</h2>
          <p class="mt-3 leading-7 text-primary-100">
            Tell Lexshield your budget, desired plot size and plans. Ask for current availability, a full cost breakdown and a site inspection. Have your own lawyer and surveyor verify the purchase before paying.
          </p>
          <div class="mt-6 flex flex-wrap gap-3">
            <NuxtLink to="/properties/mowe-ofada" class="btn-secondary">Browse Mowe–Ofada properties</NuxtLink>
            <NuxtLink to="/contact" class="btn-outline">Contact our team</NuxtLink>
            <NuxtLink to="/book-inspection" class="btn-outline">Book an inspection</NuxtLink>
          </div>
        </section>

        <section id="mowe-faqs" class="mt-12 scroll-mt-28">
          <h2 class="text-2xl text-neutral-900 sm:text-3xl">Frequently asked questions</h2>
          <div class="mt-5 divide-y divide-neutral-200">
            <details v-for="faq in faqs" :key="faq.question" class="py-4">
              <summary class="cursor-pointer font-semibold text-neutral-900">{{ faq.question }}</summary>
              <p class="mt-3 leading-7 text-neutral-700">{{ faq.answer }}</p>
            </details>
          </div>
        </section>

        <div class="mt-10 border-t border-neutral-200 pt-6 text-sm leading-6 text-neutral-600">
          <p>Browse <NuxtLink to="/properties/mowe-ofada" class="font-semibold text-primary-700 hover:underline">properties in Mowe and Ofada</NuxtLink>, view <NuxtLink to="/property/emirates-parks-gardens-mowe-ofada" class="font-semibold text-primary-700 hover:underline">Emirate Parks &amp; Gardens</NuxtLink> or explore all <NuxtLink to="/properties" class="font-semibold text-primary-700 hover:underline">available properties</NuxtLink>.</p>
          <p class="mt-2">This guide is general information, not legal, investment or valuation advice. Verify current prices, title and availability independently.</p>
        </div>
      </article>

      <aside class="lg:sticky lg:top-28 lg:self-start">
        <div class="rounded-2xl border border-primary-100 bg-primary-50 p-6">
          <p class="text-sm font-semibold uppercase tracking-wider text-primary-700">Interested in Mowe?</p>
          <h2 class="mt-2 text-xl text-neutral-900">Get current estate details</h2>
          <p class="mt-3 text-sm leading-6 text-neutral-600">Request plot sizes, current prices, payment terms and a site inspection.</p>
          <NuxtLink to="/contact" class="btn-primary mt-5 w-full">Enquire with Lexshield</NuxtLink>
          <NuxtLink to="/book-inspection" class="btn-outline mt-2 w-full">Book an inspection</NuxtLink>
          <p class="mt-4 text-xs leading-5 text-neutral-500">Independently verify title, plot boundaries and all costs before purchase.</p>
        </div>
        <div class="mt-5 rounded-2xl border border-neutral-200 p-6">
          <h2 class="font-bold text-neutral-900">Related guides</h2>
          <NuxtLink to="/land-in-mowe-for-sale-with-c-of-o-hampton-court-estate" class="mt-3 block text-sm font-semibold leading-6 text-primary-700 hover:underline">Hampton Court Estate in Mowe →</NuxtLink>
          <NuxtLink to="/best-place-to-buy-land-in-ibadan" class="mt-3 block text-sm font-semibold leading-6 text-primary-700 hover:underline">Where to buy land in Ibadan →</NuxtLink>
          <NuxtLink to="/blog/how-to-verify-land-documents-nigeria" class="mt-3 block text-sm font-semibold leading-6 text-primary-700 hover:underline">Verify land documents →</NuxtLink>
        </div>
      </aside>
    </main>
  </div>
</template>

<script setup lang="ts">
const config = useRuntimeConfig()

const slug = 'land-in-mowe-ofada-for-sale-affordable-guide'
const featuredImage = 'https://www.lexshieldproperties.com/wp-content/uploads/2025/04/emirate-landscape.jpg'
const articleTitle = 'Land in Mowe–Ofada for Sale: Affordable Plot Guide'
const articleSummary = 'Compare indicative Mowe–Ofada land prices, explore estate options and learn what to verify before buying property in Ogun State.'
const seoTitle = computed(() => `${articleTitle} | Lexshield Properties`)
const seoDescription = computed(() => `${articleSummary} Request current listing details and arrange a site inspection with Lexshield Properties.`)
const canonical = computed(() => `${config.public.siteUrl.replace(/\/$/, '')}/${slug}`)

const faqs = [
  {
    question: 'Is Mowe–Ofada in Lagos or Ogun State?',
    answer: 'Mowe and Ofada are in Ogun State. Confirm the precise address, local government area and state for the specific parcel in its survey and transaction documents.',
  },
  {
    question: 'How much does land in Mowe–Ofada cost?',
    answer: 'The supplied guide cites estimates from about ₦1 million to ₦7.5 million for certain plots, depending on location, size and estate. Other listing material may show different amounts. These are not verified current offers; ask for a dated quotation for the exact plot and all fees.',
  },
  {
    question: 'What plot sizes are available in Mowe?',
    answer: 'The supplied material mentions 300-square-metre and 600-square-metre plots, but availability and dimensions vary by estate. Confirm the approved survey plan and have an independent surveyor verify the specific plot.',
  },
  {
    question: 'Does a C of O guarantee that a plot is safe to buy?',
    answer: 'No document label is a guarantee by itself. A property lawyer should verify the document, seller’s authority, ownership chain, land status and whether it covers the exact parcel.',
  },
  {
    question: 'How much deposit is needed to buy land in Mowe?',
    answer: 'The supplied material mentions deposits between ₦500,000 and ₦1 million for some options, but these terms may be outdated or apply only to specific listings. Request current written payment terms, fees and default or refund provisions.',
  },
  {
    question: 'Does buying land in Mowe guarantee price appreciation?',
    answer: 'No. Property values can rise or fall, and development plans do not guarantee returns. Assess the location, title, infrastructure, market evidence and your own investment timeline before deciding.',
  },
]

useSeoMeta({
  title: seoTitle.value,
  description: seoDescription.value,
  ogTitle: seoTitle.value,
  ogDescription: seoDescription.value,
  ogImage: featuredImage,
  ogType: 'article',
  ogUrl: canonical.value,
  twitterCard: 'summary_large_image',
})

useHead(() => ({
  link: [{ rel: 'canonical', href: canonical.value }],
  script: [
    {
      type: 'application/ld+json',
      innerHTML: JSON.stringify({
        '@context': 'https://schema.org',
        '@type': 'Article',
        headline: articleTitle,
        description: seoDescription.value,
        image: featuredImage,
        datePublished: '2025-05-30',
        dateModified: '2026-11-01',
        author: { '@type': 'Organization', name: 'Lexshield Properties Limited' },
        publisher: { '@type': 'Organization', name: 'Lexshield Properties Limited' },
        mainEntityOfPage: canonical.value,
      }),
    },
    {
      type: 'application/ld+json',
      innerHTML: JSON.stringify({
        '@context': 'https://schema.org',
        '@type': 'FAQPage',
        mainEntity: faqs.map(faq => ({
          '@type': 'Question',
          name: faq.question,
          acceptedAnswer: { '@type': 'Answer', text: faq.answer },
        })),
      }),
    },
  ],
}))
</script>
