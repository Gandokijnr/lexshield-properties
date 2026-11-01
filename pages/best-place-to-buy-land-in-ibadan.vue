<template>
  <div>
    <section class="bg-primary-950 py-12 text-white sm:py-16">
      <div class="container-page">
        <nav class="text-sm text-primary-200" aria-label="Breadcrumb">
          <NuxtLink to="/" class="hover:text-white">Home</NuxtLink>
          <span class="mx-2" aria-hidden="true">/</span>
          <NuxtLink to="/blog" class="hover:text-white">Properties Guide</NuxtLink>
          <span class="mx-2" aria-hidden="true">/</span>
          <span class="text-white">Ibadan land guide</span>
        </nav>
        <p class="mt-8 text-sm font-semibold uppercase tracking-[0.18em] text-primary-200">Ibadan Property Guide</p>
        <h1 class="mt-3 max-w-4xl text-4xl sm:text-5xl lg:text-6xl">{{ articleTitle }}</h1>
        <p class="mt-5 max-w-3xl text-lg leading-8 text-primary-100">{{ articleSummary }}</p>
        <div class="mt-7 flex flex-wrap gap-3 text-sm text-primary-200">
          <span>By Lexshield Properties</span>
          <span aria-hidden="true">·</span>
          <time datetime="2026-03-04">Published March 4, 2026</time>
        </div>
      </div>
    </section>

    <figure class="bg-neutral-100">
      <img
        :src="featuredImage"
        alt="Landscape illustrating land investment opportunities"
        class="mx-auto max-h-[560px] w-full max-w-6xl object-cover"
        fetchpriority="high"
      />
      <figcaption class="container-page py-2 text-sm text-neutral-500">Compare the location, access, land status and verified parcel details before you buy.</figcaption>
    </figure>

    <main class="container-page grid gap-10 py-10 lg:grid-cols-[minmax(0,1fr)_300px] lg:py-14">
      <article class="min-w-0">
        <p class="text-xl font-medium leading-8 text-neutral-700">
          Ibadan offers a range of land options, from established neighbourhoods to developing corridors. The best place to buy depends on your plans: a home to build soon, a long-term land holding, farming or a commercial project. This guide compares locations and explains what to verify before committing.
        </p>

        <div class="mt-6 rounded-xl border border-warning-200 bg-warning-50 p-5 text-sm leading-6 text-warning-900">
          <strong>Price and development note:</strong> The plot prices below are indicative figures supplied for this article, not verified live listings or valuations. Confirm current prices, plot sizes, title, access, infrastructure timelines and land status independently. Proposed projects and past price movements do not guarantee future appreciation or returns.
        </div>

        <div class="mt-7 rounded-2xl bg-primary-50 p-6">
          <h2 class="text-xl text-neutral-900">Looking for land in Ibadan?</h2>
          <p class="mt-2 leading-7 text-neutral-700">Tell our team your preferred area, budget and intended use. We can share details of current listings and help arrange a site inspection.</p>
          <div class="mt-4 flex flex-wrap gap-3">
            <NuxtLink to="/properties/ibadan" class="btn-primary">Explore Ibadan properties</NuxtLink>
            <NuxtLink to="/book-inspection" class="btn-outline">Book an inspection</NuxtLink>
          </div>
        </div>

        <nav class="mt-8 rounded-xl bg-neutral-50 p-5" aria-label="Article contents">
          <h2 class="text-lg text-neutral-900">In this guide</h2>
          <ul class="mt-3 grid gap-2 text-sm text-primary-700 sm:grid-cols-2">
            <li><a href="#market-outlook" class="hover:underline">Ibadan market overview</a></li>
            <li><a href="#land-prices" class="hover:underline">Indicative plot prices</a></li>
            <li><a href="#best-locations" class="hover:underline">Areas to compare</a></li>
            <li><a href="#choose-location" class="hover:underline">Choose the right location</a></li>
            <li><a href="#buyer-checks" class="hover:underline">Checks before purchase</a></li>
            <li><a href="#ibadan-faqs" class="hover:underline">Frequently asked questions</a></li>
          </ul>
        </nav>

        <section id="market-outlook" class="mt-10 scroll-mt-28">
          <h2 class="text-2xl text-neutral-900 sm:text-3xl">Land in Ibadan: what buyers should consider</h2>
          <p class="mt-4 leading-7 text-neutral-700">
            Ibadan’s size means that prices and development conditions can vary considerably between neighbourhoods. Established areas may suit buyers who prioritize existing services and access, while developing outskirts may require a longer time horizon and additional research into roads, utilities, planning and community land history.
          </p>
          <p class="mt-3 leading-7 text-neutral-700">
            Infrastructure proposals can influence interest, but announced or ongoing projects are not a guarantee of completion, access to a particular parcel or future value. Check the latest information with relevant authorities and inspect the route and site yourself.
          </p>
        </section>

        <section id="land-prices" class="mt-10 scroll-mt-28">
          <h2 class="text-2xl text-neutral-900 sm:text-3xl">Indicative cost of land in Ibadan</h2>
          <p class="mt-4 leading-7 text-neutral-700">
            The following figures were supplied as 2026 estimates for a 500-square-metre plot. They are broad comparisons, not current quotations: the source did not provide listing dates or comparable transaction evidence, and actual plot sizes and title descriptions can differ.
          </p>
          <div class="mt-5 overflow-x-auto rounded-xl border border-neutral-200">
            <table class="w-full min-w-[560px] border-collapse text-left text-sm">
              <thead class="bg-primary-50 text-neutral-900">
                <tr>
                  <th scope="col" class="p-4 font-bold">Area / corridor</th>
                  <th scope="col" class="p-4 font-bold">Supplied indicative price per plot</th>
                  <th scope="col" class="p-4 font-bold">Title description supplied</th>
                </tr>
              </thead>
              <tbody class="divide-y divide-neutral-200 text-neutral-700">
                <tr>
                  <td class="p-4 font-semibold">Moniya / Iseyin axis</td>
                  <td class="p-4">₦1.5 million–₦3 million</td>
                  <td class="p-4">Registered survey / C of O</td>
                </tr>
                <tr>
                  <td class="p-4 font-semibold">Iddo / Eruwa Road</td>
                  <td class="p-4">₦1.7 million–₦2.7 million</td>
                  <td class="p-4">Excision / C of O</td>
                </tr>
                <tr>
                  <td class="p-4 font-semibold">Akala Express / Elebu</td>
                  <td class="p-4">₦20 million–₦45 million</td>
                  <td class="p-4">C of O</td>
                </tr>
              </tbody>
            </table>
          </div>
          <p class="mt-3 text-sm leading-6 text-neutral-500">
            Price estimates and title descriptions have not been independently verified. Confirm the exact plot area, seller’s interest, title documents, land status, fees and current asking price with independent professionals before purchase.
          </p>
          <p class="mt-4 leading-7 text-neutral-700">
            For current listings, see <NuxtLink to="/properties/ibadan" class="font-semibold text-primary-700 hover:underline">land and properties in Ibadan</NuxtLink> or review available <NuxtLink to="/properties/apete-ibadan" class="font-semibold text-primary-700 hover:underline">Apete, Ibadan properties</NuxtLink>. Ask for itemized costs and the survey plan before comparing offers.
          </p>
        </section>

        <section id="best-locations" class="mt-10 scroll-mt-28">
          <h2 class="text-2xl text-neutral-900 sm:text-3xl">Ibadan locations and corridors to compare</h2>
          <figure class="mt-5 overflow-hidden rounded-xl bg-neutral-100">
            <img
              src="https://images.unsplash.com/photo-1500382017468-9049fed747ef?q=80&w=1000&auto=format&fit=crop"
              alt="Open landscape representing land in Ibadan"
              class="max-h-[420px] w-full object-cover"
              loading="lazy"
            />
          </figure>
          <div class="mt-5 space-y-5">
            <div>
              <h3 class="text-xl text-neutral-900">Iddo and Eruwa Road</h3>
              <p class="mt-2 leading-7 text-neutral-700">Compare access to existing communities, transport, drainage and services with the distance to your daily destinations. If considering a particular estate, confirm its current availability, plot dimensions, title and total payment terms directly.</p>
            </div>
            <div>
              <h3 class="text-xl text-neutral-900">Moniya and the Iseyin axis</h3>
              <p class="mt-2 leading-7 text-neutral-700">Buyers considering residential, agricultural or commercial use should investigate the precise parcel, current access and planning status. A nearby rail or logistics facility does not establish a parcel’s value or guarantee future infrastructure benefits.</p>
            </div>
            <div>
              <h3 class="text-xl text-neutral-900">Akala Express and Elebu</h3>
              <p class="mt-2 leading-7 text-neutral-700">Established neighbourhood amenities may suit buyers seeking a more developed setting. Check the specific land’s boundaries, planning permissions, drainage and seller’s title rather than relying on area-level descriptions.</p>
            </div>
            <div>
              <h3 class="text-xl text-neutral-900">Apete and Lamini</h3>
              <p class="mt-2 leading-7 text-neutral-700">Compare commute routes, existing development and site conditions for your intended use. Browse our <NuxtLink to="/properties/apete-ibadan" class="font-semibold text-primary-700 hover:underline">Apete property listings</NuxtLink> and request current terms.</p>
            </div>
          </div>
        </section>

        <section id="choose-location" class="mt-10 scroll-mt-28">
          <h2 class="text-2xl text-neutral-900 sm:text-3xl">How to choose the right place to buy</h2>
          <ul class="mt-4 list-disc space-y-3 pl-5 leading-7 text-neutral-700">
            <li><strong>Start with your use:</strong> a home, rental property, agriculture and long-term land holding have different requirements.</li>
            <li><strong>Compare total costs:</strong> include legal and survey fees, searches, documentation, applicable charges, access work and utilities—not only the advertised price.</li>
            <li><strong>Check the journey:</strong> inspect the route at different times and confirm dependable access to work, schools, markets or transport.</li>
            <li><strong>Assess the site:</strong> check drainage, topography, boundaries, neighbouring use and whether the land suits your intended development.</li>
            <li><strong>Separate evidence from forecasts:</strong> infrastructure plans and projected returns do not guarantee completion, appreciation or resale demand.</li>
          </ul>
        </section>

        <section class="mt-10 rounded-2xl border border-primary-100 bg-primary-50 p-6 sm:p-8">
          <h2 class="text-2xl text-neutral-900">Interested in Country Home Estate or another Ibadan listing?</h2>
          <p class="mt-3 leading-7 text-neutral-700">
            Ask Lexshield for the current availability, exact location, plot size, title documents, payment schedule and all fees. Any previously advertised prices or deposit terms may have changed; request the latest written details before making a decision.
          </p>
          <div class="mt-5 flex flex-wrap gap-3">
            <NuxtLink to="/contact" class="btn-primary">Request current details</NuxtLink>
            <NuxtLink to="/properties/ibadan" class="btn-outline">View Ibadan properties</NuxtLink>
            <NuxtLink to="/book-inspection" class="btn-outline">Book a site visit</NuxtLink>
          </div>
        </section>

        <section id="buyer-checks" class="mt-10 scroll-mt-28">
          <h2 class="text-2xl text-neutral-900 sm:text-3xl">Due diligence before you pay</h2>
          <ol class="mt-4 list-decimal space-y-3 pl-5 leading-7 text-neutral-700">
            <li>Instruct an independent property lawyer to investigate ownership, the chain of title, land status and any required approvals.</li>
            <li>Have a registered surveyor identify the parcel, confirm its area and check the boundaries against the survey plan.</li>
            <li>Verify title descriptions with relevant authorities; a C of O, registered survey or excision label alone does not guarantee a safe transaction.</li>
            <li>Visit the site and confirm physical access, drainage, planning restrictions and surrounding development.</li>
            <li>Get the sale agreement, payment instructions, itemized fees and receipts in writing. Use traceable payment channels.</li>
          </ol>
          <NuxtLink to="/blog/how-to-verify-land-documents-nigeria" class="mt-5 inline-flex font-semibold text-primary-700 hover:underline">
            Read our guide to verifying land documents →
          </NuxtLink>
        </section>

        <section class="mt-12 rounded-2xl bg-primary-900 p-6 text-white sm:p-8">
          <p class="text-sm font-semibold uppercase tracking-wider text-primary-200">Take the next step</p>
          <h2 class="mt-2 text-2xl sm:text-3xl">Find an Ibadan property that fits your plans</h2>
          <p class="mt-3 leading-7 text-primary-100">
            Share your target area, budget and intended use. Our team can provide current listing details and help arrange an inspection. Verify every purchase with your own lawyer and surveyor.
          </p>
          <div class="mt-6 flex flex-wrap gap-3">
            <NuxtLink to="/contact" class="btn-secondary">Talk to Lexshield</NuxtLink>
            <NuxtLink to="/book-inspection" class="btn-outline">Book an inspection</NuxtLink>
            <a :href="whatsappUrl" target="_blank" rel="noopener noreferrer" class="btn-whatsapp">Ask on WhatsApp</a>
          </div>
        </section>

        <section id="ibadan-faqs" class="mt-12 scroll-mt-28">
          <h2 class="text-2xl text-neutral-900 sm:text-3xl">Frequently asked questions about buying land in Ibadan</h2>
          <div class="mt-5 divide-y divide-neutral-200">
            <details v-for="faq in faqs" :key="faq.question" class="py-4">
              <summary class="cursor-pointer font-semibold text-neutral-900">{{ faq.question }}</summary>
              <p class="mt-3 leading-7 text-neutral-700">{{ faq.answer }}</p>
            </details>
          </div>
        </section>

        <div class="mt-10 border-t border-neutral-200 pt-6 text-sm leading-6 text-neutral-600">
          <p>Explore <NuxtLink to="/properties/ibadan" class="font-semibold text-primary-700 hover:underline">Ibadan properties</NuxtLink>, <NuxtLink to="/properties/apete-ibadan" class="font-semibold text-primary-700 hover:underline">Apete listings</NuxtLink> or all <NuxtLink to="/properties" class="font-semibold text-primary-700 hover:underline">available properties</NuxtLink>.</p>
          <p class="mt-2">For broader market context, read our <NuxtLink to="/price-of-1-acre-of-land-in-nigeria-2026-comprehensive-guide" class="font-semibold text-primary-700 hover:underline">2026 land price guide</NuxtLink> and <NuxtLink to="/blog" class="font-semibold text-primary-700 hover:underline">other property guides</NuxtLink>.</p>
        </div>
      </article>

      <aside class="lg:sticky lg:top-28 lg:self-start">
        <div class="rounded-2xl border border-primary-100 bg-primary-50 p-6">
          <p class="text-sm font-semibold uppercase tracking-wider text-primary-700">Buying in Ibadan?</p>
          <h2 class="mt-2 text-xl text-neutral-900">Get current property details</h2>
          <p class="mt-3 text-sm leading-6 text-neutral-600">Tell us your preferred area and budget. We can help you review available listings and arrange a visit.</p>
          <NuxtLink to="/contact" class="btn-primary mt-5 w-full">Enquire about properties</NuxtLink>
          <NuxtLink to="/book-inspection" class="btn-outline mt-2 w-full">Book an inspection</NuxtLink>
          <p class="mt-4 text-xs leading-5 text-neutral-500">Confirm all prices and independently verify title and boundaries before purchase.</p>
        </div>
        <div class="mt-5 rounded-2xl border border-neutral-200 p-6">
          <h2 class="font-bold text-neutral-900">Explore Ibadan</h2>
          <NuxtLink to="/properties/ibadan" class="mt-3 block text-sm font-semibold text-primary-700 hover:underline">All Ibadan properties →</NuxtLink>
          <NuxtLink to="/properties/apete-ibadan" class="mt-3 block text-sm font-semibold text-primary-700 hover:underline">Apete, Ibadan →</NuxtLink>
          <NuxtLink to="/blog/how-to-verify-land-documents-nigeria" class="mt-3 block text-sm font-semibold leading-6 text-primary-700 hover:underline">How to verify land documents →</NuxtLink>
        </div>
      </aside>
    </main>
  </div>
</template>

<script setup lang="ts">
const config = useRuntimeConfig()
const { buildUrl } = useWhatsApp()
const whatsappUrl = computed(() => buildUrl())

const slug = 'best-place-to-buy-land-in-ibadan'
const featuredImage = 'https://www.lexshieldproperties.com/wp-content/uploads/2025/01/how-real-estate-works-image.jpg'
const articleTitle = 'Best Place to Buy Land in Ibadan'
const articleSummary = 'Compare Ibadan locations, indicative plot prices and practical due-diligence steps to find land that fits your plans.'
const seoTitle = computed(() => `${articleTitle} (2026 Guide) | Lexshield Properties`)
const seoDescription = computed(() => `${articleSummary} Explore current listings and arrange a site inspection with Lexshield Properties.`)
const canonical = computed(() => `${config.public.siteUrl.replace(/\/$/, '')}/${slug}`)

const faqs = [
  {
    question: 'Which area is the best place to buy land in Ibadan?',
    answer: 'The best area depends on your intended use, budget, commute, access needs and time horizon. Compare the exact site, title, planning status, services and current transaction evidence in locations such as Iddo, Moniya, Akala Express, Elebu and Apete.',
  },
  {
    question: 'How much does a plot of land cost in Ibadan?',
    answer: 'The indicative figures supplied for this guide range from about ₦1.5 million to ₦3 million around Moniya / Iseyin, ₦1.7 million to ₦2.7 million around Iddo / Eruwa Road and ₦20 million to ₦45 million around Akala Express / Elebu. These are not verified current listings; confirm plot size, location, title and current price.',
  },
  {
    question: 'Is land around Iddo or Eruwa Road a good investment?',
    answer: 'It may suit some buyers, but no location guarantees appreciation. Investigate the specific parcel, access, planning and land status, title, nearby services and your resale or development plans before deciding.',
  },
  {
    question: 'What should I check before buying land in Ibadan?',
    answer: 'Use an independent property lawyer to verify ownership, title, land status and approvals, and a registered surveyor to confirm boundaries and area. Visit the site and obtain all fees, payment terms and obligations in writing.',
  },
  {
    question: 'Does a Certificate of Occupancy mean the land is safe to buy?',
    answer: 'A title document should be independently verified and checked against the exact parcel and seller. It does not replace searches, survey checks, investigation of land status or legal review.',
  },
  {
    question: 'Can I arrange a site inspection before buying?',
    answer: 'Yes. Contact Lexshield to ask about current listing availability and arrange an inspection. A site visit should complement—not replace—independent legal and survey due diligence.',
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
        datePublished: '2026-03-04',
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
