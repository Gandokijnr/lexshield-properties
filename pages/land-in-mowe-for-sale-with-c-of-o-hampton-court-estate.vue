<template>
  <div>
    <section class="bg-primary-950 py-12 text-white sm:py-16">
      <div class="container-page">
        <nav class="text-sm text-primary-200" aria-label="Breadcrumb">
          <NuxtLink to="/" class="hover:text-white">Home</NuxtLink>
          <span class="mx-2" aria-hidden="true">/</span>
          <NuxtLink to="/blog" class="hover:text-white">Properties Guide</NuxtLink>
          <span class="mx-2" aria-hidden="true">/</span>
          <span class="text-white">Hampton Court Estate</span>
        </nav>
        <p class="mt-8 text-sm font-semibold uppercase tracking-[0.18em] text-primary-200">Mowe, Ogun State · Estate Guide</p>
        <h1 class="mt-3 max-w-4xl text-4xl sm:text-5xl lg:text-6xl">{{ articleTitle }}</h1>
        <p class="mt-5 max-w-3xl text-lg leading-8 text-primary-100">{{ articleSummary }}</p>
      </div>
    </section>

    <figure class="bg-neutral-100">
      <img
        :src="featuredImage"
        alt="Land in Mowe, Ogun State"
        class="mx-auto max-h-[560px] w-full max-w-6xl object-cover"
        fetchpriority="high"
      />
      <figcaption class="container-page py-2 text-sm text-neutral-500">Ask for the current site plan, plot details and an inspection before making a purchase decision.</figcaption>
    </figure>

    <main class="container-page grid gap-10 py-10 lg:grid-cols-[minmax(0,1fr)_300px] lg:py-14">
      <article class="min-w-0">
        <p class="text-xl font-medium leading-8 text-neutral-700">
          Mowe is in Ogun State, along the Lagos–Ibadan Expressway corridor. Hampton Court Estate is described in the supplied listing as a residential estate with 600-square-metre plots and C of O documentation. Treat these as seller-provided details: confirm the exact location, availability, plot size, title and terms independently before paying.
        </p>

        <div class="mt-6 rounded-xl border border-warning-200 bg-warning-50 p-5 text-sm leading-6 text-warning-900">
          <strong>Important:</strong> Estate features, title descriptions and prices below have not been independently verified and may change. A claim of C of O or other documentation is not proof of title. Have your own property lawyer verify the title and seller’s authority, and use a registered surveyor to confirm the parcel.
        </div>

        <div class="mt-7 rounded-2xl bg-primary-50 p-6">
          <h2 class="text-xl text-neutral-900">Interested in Hampton Court Estate?</h2>
          <p class="mt-2 leading-7 text-neutral-700">Request the current price list, plot availability, location pin, title documents and all fees. We can also help arrange a site inspection.</p>
          <div class="mt-4 flex flex-wrap gap-3">
            <NuxtLink to="/contact" class="btn-primary">Request current details</NuxtLink>
            <NuxtLink to="/book-inspection" class="btn-outline">Book an inspection</NuxtLink>
          </div>
        </div>

        <nav class="mt-8 rounded-xl bg-neutral-50 p-5" aria-label="Article contents">
          <h2 class="text-lg text-neutral-900">In this guide</h2>
          <ul class="mt-3 grid gap-2 text-sm text-primary-700 sm:grid-cols-2">
            <li><a href="#why-mowe" class="hover:underline">Why consider Mowe?</a></li>
            <li><a href="#hampton-court" class="hover:underline">Hampton Court Estate</a></li>
            <li><a href="#prices" class="hover:underline">Supplied price schedule</a></li>
            <li><a href="#buyer-checks" class="hover:underline">Checks before purchase</a></li>
            <li><a href="#mowe-faqs" class="hover:underline">Frequently asked questions</a></li>
          </ul>
        </nav>

        <section id="why-mowe" class="mt-10 scroll-mt-28">
          <h2 class="text-2xl text-neutral-900 sm:text-3xl">Why compare land in Mowe, Ogun State?</h2>
          <p class="mt-4 leading-7 text-neutral-700">
            Mowe is part of Ogun State’s developing communities along the Lagos–Ibadan Expressway. Buyers may compare it with nearby areas such as Ibafo and Ofada based on their commute, budget, intended use and access to services. Proximity to commercial or religious landmarks does not by itself guarantee access, infrastructure completion or future appreciation.
          </p>
          <p class="mt-3 leading-7 text-neutral-700">
            Confirm the estate’s exact position and route, inspect the land in person, and research relevant planning and acquisition status. For general location listings, visit our <NuxtLink to="/properties/mowe-ofada" class="font-semibold text-primary-700 hover:underline">Mowe–Ofada properties page</NuxtLink>.
          </p>
          <p class="mt-3 leading-7 text-neutral-700">
            You can consult the <a href="https://ogunstate.gov.ng/" target="_blank" rel="noopener noreferrer" class="font-semibold text-primary-700 hover:underline">Ogun State Government website</a> for official state information. Confirm land records and transaction requirements with the appropriate authorities and your lawyer.
          </p>
        </section>

        <section id="hampton-court" class="mt-10 scroll-mt-28">
          <h2 class="text-2xl text-neutral-900 sm:text-3xl">Hampton Court Estate: details to confirm</h2>
          <figure class="mt-5 overflow-hidden rounded-xl bg-neutral-100">
            <img
              src="https://www.lexshieldproperties.com/wp-content/uploads/2023/10/hampton-court-and-estate-240x300.jpeg"
              alt="Hampton Court Estate in Mowe"
              class="mx-auto max-h-[420px] w-full object-contain"
              loading="lazy"
            />
          </figure>
          <p class="mt-4 leading-7 text-neutral-700">
            The supplied listing advertises the following features. Ask for current written confirmation and supporting documents for the specific plot you are considering:
          </p>
          <ul class="mt-4 list-disc space-y-2 pl-5 leading-7 text-neutral-700">
            <li>Residential plots advertised as 600 square metres</li>
            <li>C of O, deed of conveyance and approved survey plan described in the listing</li>
            <li>Road access and perimeter fencing</li>
            <li>CCTV and recreation or health facilities</li>
          </ul>
          <p class="mt-4 leading-7 text-neutral-700">
            Do not rely on an estate brochure or a document title alone. Have an independent lawyer verify the origin, validity, ownership chain and coverage of the title documents, and have a surveyor identify the plot on the ground.
          </p>
        </section>

        <section id="prices" class="mt-10 scroll-mt-28">
          <h2 class="text-2xl text-neutral-900 sm:text-3xl">How much is a plot in Mowe or Ibafo?</h2>
          <p class="mt-4 leading-7 text-neutral-700">
            The supplied Hampton Court listing states a 600-square-metre plot and the following price schedule. These figures are included as provided, not as confirmed current offers; ask Lexshield for a dated written quotation before relying on them.
          </p>
          <div class="mt-5 overflow-x-auto rounded-xl border border-neutral-200">
            <table class="w-full min-w-[520px] border-collapse text-left text-sm">
              <thead class="bg-primary-50 text-neutral-900">
                <tr>
                  <th scope="col" class="p-4 font-bold">Payment option</th>
                  <th scope="col" class="p-4 font-bold">Supplied price</th>
                  <th scope="col" class="p-4 font-bold">Deposit noted in listing</th>
                </tr>
              </thead>
              <tbody class="divide-y divide-neutral-200 text-neutral-700">
                <tr><td class="p-4 font-semibold">Outright</td><td class="p-4">₦6,300,000</td><td class="p-4">Confirm with seller</td></tr>
                <tr><td class="p-4 font-semibold">6 months</td><td class="p-4">₦7,100,000</td><td class="p-4">₦500,000</td></tr>
                <tr><td class="p-4 font-semibold">12 months</td><td class="p-4">₦8,000,000</td><td class="p-4">₦500,000</td></tr>
                <tr><td class="p-4 font-semibold">18 months</td><td class="p-4">₦8,900,000</td><td class="p-4">₦500,000</td></tr>
              </tbody>
            </table>
          </div>
          <p class="mt-3 text-sm leading-6 text-neutral-500">
            Confirm whether the figures remain available, what the deposit covers, the payment due dates, applicable fees and the consequences of late or missed payments. Request the complete terms in writing before sending money.
          </p>
          <p class="mt-4 leading-7 text-neutral-700">
            Prices for Ibafo vary by exact location, plot size and title. The supplied content mentions a broad ₦4.5 million–₦15 million range; treat it as an unverified comparison only and request current parcel-specific pricing.
          </p>
        </section>

        <section class="mt-10">
          <h2 class="text-2xl text-neutral-900 sm:text-3xl">See the location and surrounding area</h2>
          <figure class="mt-5 overflow-hidden rounded-xl bg-neutral-100">
            <img
              src="https://www.lexshieldproperties.com/wp-content/uploads/2023/10/20240813_115429-scaled.jpg"
              alt="View of land in Mowe"
              class="max-h-[520px] w-full object-cover"
              loading="lazy"
            />
            <figcaption class="p-3 text-sm text-neutral-500">Request current site images and verify the plot in person before purchase.</figcaption>
          </figure>
          <figure class="mt-5 overflow-hidden rounded-xl bg-neutral-100">
            <img
              src="https://www.lexshieldproperties.com/wp-content/uploads/2023/10/20240813_115255-scaled.jpg"
              alt="Estate surroundings in Mowe, Ogun State"
              class="max-h-[520px] w-full object-cover"
              loading="lazy"
            />
          </figure>
        </section>

        <section id="buyer-checks" class="mt-10 scroll-mt-28">
          <h2 class="text-2xl text-neutral-900 sm:text-3xl">Checklist before buying land in Mowe</h2>
          <ol class="mt-4 list-decimal space-y-3 pl-5 leading-7 text-neutral-700">
            <li>Confirm Mowe is in Ogun State and verify the estate’s exact location, access and plot boundaries.</li>
            <li>Have an independent property lawyer investigate the seller’s authority, chain of title, C of O claim, land status and required approvals.</li>
            <li>Instruct a registered surveyor to measure the plot and compare the survey plan with the physical parcel.</li>
            <li>Visit the site and assess road access, drainage, surrounding development and any facilities currently in place.</li>
            <li>Request an itemized breakdown of the price, statutory and estate fees, payment schedule and allocation conditions.</li>
            <li>Use traceable payments to the verified recipient and keep signed agreements and receipts.</li>
          </ol>
          <p class="mt-4 leading-7 text-neutral-700">
            For more detail, read our <NuxtLink to="/blog/how-to-verify-land-documents-nigeria" class="font-semibold text-primary-700 hover:underline">guide to verifying land documents in Nigeria</NuxtLink>.
          </p>
        </section>

        <section class="mt-12 rounded-2xl bg-primary-900 p-6 text-white sm:p-8">
          <p class="text-sm font-semibold uppercase tracking-wider text-primary-200">Take the next step</p>
          <h2 class="mt-2 text-2xl sm:text-3xl">Get current Hampton Court Estate details</h2>
          <p class="mt-3 leading-7 text-primary-100">
            Ask about plot availability, current pricing, payment terms, location and title documents. We can help arrange a site visit so you can assess the property before deciding.
          </p>
          <div class="mt-6 flex flex-wrap gap-3">
            <NuxtLink to="/contact" class="btn-secondary">Enquire about Hampton Court</NuxtLink>
            <NuxtLink to="/book-inspection" class="btn-outline">Book a site inspection</NuxtLink>
            <a :href="whatsappUrl" target="_blank" rel="noopener noreferrer" class="btn-whatsapp">Chat on WhatsApp</a>
          </div>
        </section>

        <section id="mowe-faqs" class="mt-12 scroll-mt-28">
          <h2 class="text-2xl text-neutral-900 sm:text-3xl">FAQs about land in Mowe and Ibafo</h2>
          <div class="mt-5 divide-y divide-neutral-200">
            <details v-for="faq in faqs" :key="faq.question" class="py-4">
              <summary class="cursor-pointer font-semibold text-neutral-900">{{ faq.question }}</summary>
              <p class="mt-3 leading-7 text-neutral-700">{{ faq.answer }}</p>
            </details>
          </div>
        </section>

        <div class="mt-10 border-t border-neutral-200 pt-6 text-sm leading-6 text-neutral-600">
          <p>Explore <NuxtLink to="/properties/mowe-ofada" class="font-semibold text-primary-700 hover:underline">properties in Mowe and Ofada</NuxtLink>, browse <NuxtLink to="/properties" class="font-semibold text-primary-700 hover:underline">all available properties</NuxtLink> or read our <NuxtLink to="/blog" class="font-semibold text-primary-700 hover:underline">property guides</NuxtLink>.</p>
          <p class="mt-2">All prices, availability and property details should be confirmed directly before purchase. This guide is general information, not legal or investment advice.</p>
        </div>
      </article>

      <aside class="lg:sticky lg:top-28 lg:self-start">
        <div class="rounded-2xl border border-primary-100 bg-primary-50 p-6">
          <p class="text-sm font-semibold uppercase tracking-wider text-primary-700">Interested in Mowe?</p>
          <h2 class="mt-2 text-xl text-neutral-900">Request current estate details</h2>
          <p class="mt-3 text-sm leading-6 text-neutral-600">Ask about available plots, full costs, payment plans and arranging an inspection.</p>
          <NuxtLink to="/contact" class="btn-primary mt-5 w-full">Contact Lexshield</NuxtLink>
          <NuxtLink to="/book-inspection" class="btn-outline mt-2 w-full">Book an inspection</NuxtLink>
          <p class="mt-4 text-xs leading-5 text-neutral-500">Independently verify title, plot size and payment terms before purchase.</p>
        </div>
        <div class="mt-5 rounded-2xl border border-neutral-200 p-6">
          <h2 class="font-bold text-neutral-900">Related resources</h2>
          <NuxtLink to="/properties/mowe-ofada" class="mt-3 block text-sm font-semibold text-primary-700 hover:underline">Mowe and Ofada properties →</NuxtLink>
          <NuxtLink to="/blog/how-to-verify-land-documents-nigeria" class="mt-3 block text-sm font-semibold leading-6 text-primary-700 hover:underline">How to verify land documents →</NuxtLink>
          <NuxtLink to="/best-place-to-buy-land-in-ibadan" class="mt-3 block text-sm font-semibold leading-6 text-primary-700 hover:underline">Where to buy land in Ibadan →</NuxtLink>
        </div>
      </aside>
    </main>
  </div>
</template>

<script setup lang="ts">
const config = useRuntimeConfig()
const { buildUrl } = useWhatsApp()
const whatsappUrl = computed(() => buildUrl())

const slug = 'land-in-mowe-for-sale-with-c-of-o-hampton-court-estate'
const featuredImage = 'https://www.lexshieldproperties.com/wp-content/uploads/2023/10/20240813_115429-scaled.jpg'
const articleTitle = 'Land in Mowe for Sale with C of O: Hampton Court Estate'
const articleSummary = 'Review Hampton Court Estate in Mowe, Ogun State, compare supplied plot prices and payment options, and learn what to verify before buying.'
const seoTitle = computed(() => `${articleTitle} | Lexshield Properties`)
const seoDescription = computed(() => `${articleSummary} Request current availability and arrange a site inspection with Lexshield Properties.`)
const canonical = computed(() => `${config.public.siteUrl.replace(/\/$/, '')}/${slug}`)

const faqs = [
  {
    question: 'Is Mowe in Lagos or Ogun State?',
    answer: 'Mowe is in Ogun State, along the Lagos–Ibadan Expressway corridor. Confirm the exact address and state for the specific property in its transaction documents.',
  },
  {
    question: 'How much is a plot at Hampton Court Estate?',
    answer: 'The supplied listing states ₦6.3 million outright, ₦7.1 million over 6 months, ₦8 million over 12 months and ₦8.9 million over 18 months, with ₦500,000 deposits shown for instalment options. These figures are unverified and may be outdated; request a current written quotation and complete fee schedule.',
  },
  {
    question: 'Are the Hampton Court plots 600 square metres?',
    answer: 'The supplied listing describes the plots as 600 square metres. Ask for the approved survey plan and use an independent registered surveyor to confirm the dimensions and boundaries of the specific plot.',
  },
  {
    question: 'Does Hampton Court Estate have a Certificate of Occupancy?',
    answer: 'The supplied listing advertises C of O documentation, but this has not been independently verified. Have a property lawyer confirm the document’s validity, ownership chain, land status and that it covers the exact parcel before paying.',
  },
  {
    question: 'What should I check before buying land in Mowe?',
    answer: 'Verify seller authority, title and land status through an independent property lawyer; confirm plot size and boundaries with a registered surveyor; inspect the site; and get all costs and payment terms in writing.',
  },
  {
    question: 'How many 600-square-metre plots make an acre?',
    answer: 'An international acre is about 4,046.86 square metres, which is approximately 6.7 areas of 600 square metres before deductions for roads, drainage or shared spaces. Have a surveyor verify the actual land area and layout.',
  },
]

useSeoMeta(() => ({
  title: seoTitle.value,
  description: seoDescription.value,
  ogTitle: seoTitle.value,
  ogDescription: seoDescription.value,
  ogImage: featuredImage,
  ogType: 'article',
  ogUrl: canonical.value,
  twitterCard: 'summary_large_image',
}))

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
