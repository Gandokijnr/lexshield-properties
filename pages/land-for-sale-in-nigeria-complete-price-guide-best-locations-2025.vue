<template>
  <div>
    <section class="bg-primary-950 py-12 text-white sm:py-16">
      <div class="container-page">
        <nav class="text-sm text-primary-200" aria-label="Breadcrumb">
          <NuxtLink to="/" class="hover:text-white">Home</NuxtLink>
          <span class="mx-2" aria-hidden="true">/</span>
          <NuxtLink to="/blog" class="hover:text-white">Properties Guide</NuxtLink>
          <span class="mx-2" aria-hidden="true">/</span>
          <span class="text-white">Land prices and locations</span>
        </nav>
        <p class="mt-8 text-sm font-semibold uppercase tracking-[0.18em] text-primary-200">Land Investment Guide</p>
        <h1 class="mt-3 max-w-4xl text-4xl sm:text-5xl lg:text-6xl">{{ articleTitle }}</h1>
        <p class="mt-5 max-w-3xl text-lg leading-8 text-primary-100">{{ articleSummary }}</p>
        <div class="mt-7 flex flex-wrap gap-3 text-sm text-primary-200">
          <span>By Lexshield Properties</span>
          <span aria-hidden="true">·</span>
          <time datetime="2025-08-11">Published August 11, 2025</time>
        </div>
      </div>
    </section>

    <figure class="bg-neutral-100">
      <img
        :src="featuredImage"
        alt="Land allocation at Emirates Parks and Gardens"
        class="mx-auto max-h-[560px] w-full max-w-6xl object-cover"
        fetchpriority="high"
      />
      <figcaption class="container-page py-2 text-sm text-neutral-500">Compare the land itself, its access and verified documentation—not just its asking price.</figcaption>
    </figure>

    <main class="container-page grid gap-10 py-10 lg:grid-cols-[minmax(0,1fr)_300px] lg:py-14">
      <article class="min-w-0">
        <p class="text-xl font-medium leading-8 text-neutral-700">
          The price of an acre varies widely across Nigeria. Prime urban land, a developing Lagos corridor and rural farmland are very different purchases, even when each is described as “one acre.” This guide explains the measurements, compares indicative locations and shares practical checks for buyers.
        </p>
        <div class="mt-6 rounded-xl border border-warning-200 bg-warning-50 p-5 text-sm leading-6 text-warning-900">
          <strong>Price note:</strong> The regional figures below are approximate estimates supplied for Q1 2026, not verified live listings or valuations. They post-date this article’s August 2025 publication and are included as a later market reference. Request current comparable prices and independent professional advice before purchasing.
        </div>

        <div class="mt-7 rounded-2xl bg-primary-50 p-6">
          <h2 class="text-xl text-neutral-900">Looking at land in Mowe or Ofada?</h2>
          <p class="mt-2 leading-7 text-neutral-700">Talk to our team about available estates, payment options and arranging a site visit. Independently verify the title and boundaries before you pay.</p>
          <div class="mt-4 flex flex-wrap gap-3">
            <NuxtLink to="/properties/mowe-ofada" class="btn-primary">Explore Mowe / Ofada</NuxtLink>
            <NuxtLink to="/contact" class="btn-outline">Ask our team</NuxtLink>
          </div>
        </div>

        <nav class="mt-8 rounded-xl bg-neutral-50 p-5" aria-label="Article contents">
          <h2 class="text-lg text-neutral-900">In this guide</h2>
          <ul class="mt-3 grid gap-2 text-sm text-primary-700 sm:grid-cols-2">
            <li><a href="#acre-size" class="hover:underline">What is an acre?</a></li>
            <li><a href="#regional-prices" class="hover:underline">Regional price guide</a></li>
            <li><a href="#lagos-prices" class="hover:underline">Lagos land prices</a></li>
            <li><a href="#ogun-prices" class="hover:underline">Ogun land prices</a></li>
            <li><a href="#cheapest-land" class="hover:underline">Lower-cost locations</a></li>
            <li><a href="#title-and-checks" class="hover:underline">Title and buyer checks</a></li>
            <li><a href="#land-faqs" class="hover:underline">Frequently asked questions</a></li>
          </ul>
        </nav>

        <section id="acre-size" class="mt-10 scroll-mt-28">
          <h2 class="text-2xl text-neutral-900 sm:text-3xl">What does one acre mean in Nigeria?</h2>
          <p class="mt-4 leading-7 text-neutral-700">
            One international acre is approximately <strong>4,046.86 square metres</strong> (about 43,560 square feet or 0.405 hectares). A 600-square-metre plot is a common reference size, but 1 acre is about 6.7 plots of that size before any land is set aside for access roads, drainage or other shared space.
          </p>
          <p class="mt-3 leading-7 text-neutral-700">
            Plot dimensions and layouts differ between communities and developers. Some areas use smaller plots, but a claimed plot count does not prove the parcel’s area. Ask an independent registered surveyor to measure the land and confirm it against the survey plan.
          </p>
        </section>

        <section id="regional-prices" class="mt-10 scroll-mt-28">
          <h2 class="text-2xl text-neutral-900 sm:text-3xl">Indicative price of an acre by region</h2>
          <p class="mt-4 leading-7 text-neutral-700">
            These wide ranges show the differences between the markets described in the supplied Q1 2026 estimates. Prices can vary within a single town according to title, exact location, access, size and intended use.
          </p>
          <div class="mt-5 overflow-x-auto rounded-xl border border-neutral-200">
            <table class="w-full min-w-[640px] border-collapse text-left text-sm">
              <thead class="bg-primary-50 text-neutral-900">
                <tr>
                  <th scope="col" class="p-4 font-bold">Region and examples</th>
                  <th scope="col" class="p-4 font-bold">Estimated price per acre</th>
                  <th scope="col" class="p-4 font-bold">Potential use</th>
                </tr>
              </thead>
              <tbody class="divide-y divide-neutral-200 text-neutral-700">
                <tr><td class="p-4 font-semibold">Prime Lagos: Lekki Phase 1, Ikoyi</td><td class="p-4">₦1.5 billion+</td><td class="p-4">Luxury residential</td></tr>
                <tr><td class="p-4 font-semibold">Lagos growth areas: Epe, Ibeju-Lekki</td><td class="p-4">₦15 million–₦80 million</td><td class="p-4">Land banking and industrial</td></tr>
                <tr><td class="p-4 font-semibold">Ogun: Mowe, Ofada, Abeokuta</td><td class="p-4">₦6 million–₦30 million</td><td class="p-4">Residential and commuting</td></tr>
                <tr><td class="p-4 font-semibold">Rural Ogun: Imeko, Ijebu North</td><td class="p-4">₦800,000–₦2.5 million</td><td class="p-4">Agriculture</td></tr>
                <tr><td class="p-4 font-semibold">Abuja outskirts: Kuje, Gwagwalada</td><td class="p-4">₦25 million–₦60 million</td><td class="p-4">Mixed-use development</td></tr>
                <tr><td class="p-4 font-semibold">Oyo: Iseyin, Ogbomosho</td><td class="p-4">₦250,000–₦1 million</td><td class="p-4">Large-scale farming</td></tr>
                <tr><td class="p-4 font-semibold">Northern states: Kebbi, Niger, Nasarawa</td><td class="p-4">₦150,000–₦600,000</td><td class="p-4">Farming and grazing</td></tr>
              </tbody>
            </table>
          </div>
          <p class="mt-3 text-sm leading-6 text-neutral-500">
            Estimates only; not an offer, guarantee or valuation. Confirm current comparable sales, land status, title, parcel size, access and fees with independent professionals.
          </p>
        </section>

        <section id="lagos-prices" class="mt-10 scroll-mt-28">
          <h2 class="text-2xl text-neutral-900 sm:text-3xl">Price of an acre of land in Lagos</h2>
          <figure class="mt-5 overflow-hidden rounded-xl bg-neutral-100">
            <img
              src="https://www.lexshieldproperties.com/wp-content/uploads/2025/08/Country-Roads-300x225.jpeg"
              alt="Road access through a developing land area"
              class="max-h-[420px] w-full object-cover"
              loading="lazy"
            />
          </figure>
          <p class="mt-4 leading-7 text-neutral-700">
            Lagos includes premium established districts and expanding areas where access, infrastructure and development plans can influence buyer interest. The supplied estimates put Epe at roughly ₦12 million–₦45 million per acre and Ibeju-Lekki at about ₦30 million–₦100 million or more. The regional comparison table uses the broader ₦15 million–₦80 million range supplied for emerging Lagos locations; the difference illustrates why buyers should obtain a parcel-specific quote.
          </p>
          <p class="mt-3 leading-7 text-neutral-700">
            Do not rely on a nearby project or proposed infrastructure as proof of a parcel’s value or development status. Confirm the exact location, planning restrictions, acquisition status, title and legal access. See <NuxtLink to="/properties/ibeju-lekki" class="font-semibold text-primary-700 hover:underline">Ibeju-Lekki property options</NuxtLink> or read our newer <NuxtLink to="/price-of-1-acre-of-land-in-nigeria-2026-comprehensive-guide" class="font-semibold text-primary-700 hover:underline">2026 acre-price guide</NuxtLink>.
          </p>
        </section>

        <section id="ogun-prices" class="mt-10 scroll-mt-28">
          <h2 class="text-2xl text-neutral-900 sm:text-3xl">Price of an acre of land in Ogun State</h2>
          <p class="mt-4 leading-7 text-neutral-700">
            Ogun State ranges from commuter and industrial corridors near Lagos to rural agricultural communities. The estimates supplied for Mowe, Ofada and Abeokuta are ₦6 million–₦30 million per acre. A separate estimate for commuter locations including Magboro and Otta reaches ₦20 million–₦60 million, showing how much local conditions and source estimates can differ. Rural Imeko and Ijebu North are estimated at ₦800,000–₦2.5 million for agricultural land.
          </p>
          <p class="mt-3 leading-7 text-neutral-700">
            For a residential or commuter purchase, consider verified access, drainage, utilities, surrounding development and title. For farmland, assess soil, water, topography, access and suitability for the intended crop. Browse <NuxtLink to="/properties/mowe-ofada" class="font-semibold text-primary-700 hover:underline">Mowe and Ofada properties</NuxtLink> and request current availability.
          </p>
        </section>

        <section id="cheapest-land" class="mt-10 scroll-mt-28">
          <h2 class="text-2xl text-neutral-900 sm:text-3xl">Where can buyers find lower-cost land?</h2>
          <p class="mt-4 leading-7 text-neutral-700">
            Buyers seeking large agricultural parcels often compare rural parts of Oyo and northern states. The supplied estimates cite ₦100,000–₦300,000 per acre in parts of Kebbi and Niger, ₦250,000–₦600,000 around Iseyin and Saki in Oyo, and prices from about ₦300,000 in parts of Benue. These figures are broad historical estimates, not verified offers.
          </p>
          <p class="mt-3 leading-7 text-neutral-700">
            Lower asking prices can come with trade-offs such as distance from markets, limited infrastructure, access issues or different land-use and title considerations. Verify the seller’s rights and the land’s suitability in person before making a decision.
          </p>
        </section>

        <section id="title-and-checks" class="mt-10 scroll-mt-28">
          <h2 class="text-2xl text-neutral-900 sm:text-3xl">How documentation and due diligence affect price</h2>
          <p class="mt-4 leading-7 text-neutral-700">
            Documentation can affect asking prices, but a document’s name does not on its own establish ownership or make a transaction safe. A Certificate of Occupancy, registered title, excision or Gazette must be independently checked to confirm authenticity, ownership, land status and that it covers the exact parcel being sold.
          </p>
          <figure class="mt-5 overflow-hidden rounded-xl bg-neutral-100">
            <img
              src="https://www.lexshieldproperties.com/wp-content/uploads/2025/08/Prestige-Park-Drive-Plots-Location-prestige-parkdrive-300x235.jpeg"
              alt="Prestige Park Drive plots and location for land investment"
              class="max-h-[420px] w-full object-cover"
              loading="lazy"
            />
            <figcaption class="p-3 text-sm text-neutral-500">A site inspection and independent survey help confirm the land matches the offer.</figcaption>
          </figure>
          <ol class="mt-5 list-decimal space-y-3 pl-5 leading-7 text-neutral-700">
            <li>Have a registered surveyor identify and measure the parcel, check its boundaries and compare it with the survey plan.</li>
            <li>Ask a qualified property lawyer to investigate the seller’s ownership and chain of title with the relevant authorities.</li>
            <li>Check for acquisition, planning restrictions, encumbrances and any required consent or registration steps.</li>
            <li>Visit the site and assess access, drainage, neighbouring activity and suitability for your intended use.</li>
            <li>Get the purchase price, fees, payment terms and obligations in writing before transferring funds.</li>
          </ol>
          <NuxtLink to="/blog/how-to-verify-land-documents-nigeria" class="mt-5 inline-flex font-semibold text-primary-700 hover:underline">
            Read our guide to verifying land documents →
          </NuxtLink>
        </section>

        <section class="mt-10 rounded-2xl bg-primary-50 p-6 sm:p-8">
          <h2 class="text-2xl text-neutral-900">Ready to compare land opportunities?</h2>
          <p class="mt-3 leading-7 text-neutral-700">
            Share your budget, preferred location and intended use with our team. We can provide details about available listings and help arrange an inspection. For your protection, use an independent lawyer and surveyor to verify every purchase.
          </p>
          <div class="mt-5 flex flex-wrap gap-3">
            <NuxtLink to="/contact" class="btn-primary">Contact Lexshield</NuxtLink>
            <NuxtLink to="/book-inspection" class="btn-outline">Arrange a site visit</NuxtLink>
            <a :href="whatsappUrl" target="_blank" rel="noopener noreferrer" class="btn-whatsapp">Chat on WhatsApp</a>
          </div>
        </section>

        <section id="land-faqs" class="mt-12 scroll-mt-28">
          <h2 class="text-2xl text-neutral-900 sm:text-3xl">Frequently asked questions about land prices</h2>
          <div class="mt-5 divide-y divide-neutral-200">
            <details v-for="faq in faqs" :key="faq.question" class="py-4">
              <summary class="cursor-pointer font-semibold text-neutral-900">{{ faq.question }}</summary>
              <p class="mt-3 leading-7 text-neutral-700">{{ faq.answer }}</p>
            </details>
          </div>
        </section>

        <div class="mt-10 border-t border-neutral-200 pt-6 text-sm leading-6 text-neutral-600">
          <p>For more recent estimates, read the <NuxtLink to="/price-of-1-acre-of-land-in-nigeria-2026-comprehensive-guide" class="font-semibold text-primary-700 hover:underline">2026 comprehensive guide to the price of one acre in Nigeria</NuxtLink>.</p>
          <p class="mt-2">Explore <NuxtLink to="/properties" class="font-semibold text-primary-700 hover:underline">available properties</NuxtLink> or browse our <NuxtLink to="/blog" class="font-semibold text-primary-700 hover:underline">property guides</NuxtLink>.</p>
        </div>
      </article>

      <aside class="lg:sticky lg:top-28 lg:self-start">
        <div class="rounded-2xl border border-primary-100 bg-primary-50 p-6">
          <p class="text-sm font-semibold uppercase tracking-wider text-primary-700">Need help with your search?</p>
          <h2 class="mt-2 text-xl text-neutral-900">Compare available property options</h2>
          <p class="mt-3 text-sm leading-6 text-neutral-600">Tell us your preferred area and budget. We can share listing details and help arrange an inspection.</p>
          <NuxtLink to="/contact" class="btn-primary mt-5 w-full">Request property details</NuxtLink>
          <NuxtLink to="/book-inspection" class="btn-outline mt-2 w-full">Book an inspection</NuxtLink>
          <p class="mt-4 text-xs leading-5 text-neutral-500">Independently verify title, boundaries and land status before purchase.</p>
        </div>
        <div class="mt-5 rounded-2xl border border-neutral-200 p-6">
          <h2 class="font-bold text-neutral-900">Explore more</h2>
          <NuxtLink to="/properties/mowe-ofada" class="mt-3 block text-sm font-semibold text-primary-700 hover:underline">Properties in Mowe / Ofada →</NuxtLink>
          <NuxtLink to="/properties/ibeju-lekki" class="mt-3 block text-sm font-semibold text-primary-700 hover:underline">Properties in Ibeju-Lekki →</NuxtLink>
          <NuxtLink to="/price-of-1-acre-of-land-in-nigeria-2026-comprehensive-guide" class="mt-3 block text-sm font-semibold leading-6 text-primary-700 hover:underline">Read the 2026 price guide →</NuxtLink>
        </div>
      </aside>
    </main>
  </div>
</template>

<script setup lang="ts">
const config = useRuntimeConfig()
const { buildUrl } = useWhatsApp()
const whatsappUrl = computed(() => buildUrl())
const featuredImage = '/price-of-one-hectres-of-land.webp'
const featuredImageUrl = computed(() => `${config.public.siteUrl.replace(/\/$/, '')}${featuredImage}`)

const slug = 'land-for-sale-in-nigeria-complete-price-guide-best-locations-2025'
const articleTitle = 'Price of 1 Acre of Land in Nigeria: Complete Price Guide & Best Locations (2025)'
const articleSummary = 'Understand how location, land use and documentation shape acre prices, and what to verify before buying land in Nigeria.'
const seoTitle = computed(() => `${articleTitle} | Lexshield Properties`)
const seoDescription = computed(() => `${articleSummary} Compare regional estimates, acreage measurements and essential land-buying checks.`)
const canonical = computed(() => `${config.public.siteUrl.replace(/\/$/, '')}/${slug}`)

const faqs = [
  {
    question: 'How much does one acre of land cost in Nigeria?',
    answer: 'Prices vary by location and title. The estimates supplied for this guide range from about ₦150,000–₦600,000 in some northern states to ₦1.5 billion or more in prime Lagos. These are broad Q1 2026 estimates, not current verified offers.',
  },
  {
    question: 'How many plots are in one acre?',
    answer: 'An acre is about 4,046.86 square metres. That is approximately 6.7 plots of 600 square metres before allowing for roads, drainage or shared areas. A surveyor should confirm the exact parcel size and layout.',
  },
  {
    question: 'Where is land less expensive in Nigeria?',
    answer: 'Some rural locations in Oyo, Ogun and northern states have lower estimates than major urban centres. The right comparison depends on the specific community, access, permitted use, title and the land’s suitability for your plans.',
  },
  {
    question: 'What should I verify before buying land?',
    answer: 'Use an independent property lawyer to investigate ownership, title and land status, and a registered surveyor to verify the parcel’s size and boundaries. Visit the land, check planning and access, and get all costs and terms in writing.',
  },
  {
    question: 'Does a Certificate of Occupancy guarantee safe ownership?',
    answer: 'No. Have a qualified property lawyer verify that the document is genuine, the seller has authority to sell, the title covers the exact land and there are no relevant acquisition, dispute or encumbrance issues.',
  },
  {
    question: 'Can non-Nigerians buy land in Nigeria?',
    answer: 'Land and lease arrangements are governed by Nigerian law and may depend on the state and buyer’s circumstances. A prospective non-Nigerian buyer should obtain advice from a qualified Nigerian property lawyer before entering an agreement.',
  },
]

useSeoMeta({
  title: seoTitle.value,
  description: seoDescription.value,
  ogTitle: seoTitle.value,
  ogDescription: seoDescription.value,
  ogImage: featuredImageUrl.value,
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
        headline: seoTitle.value,
        description: seoDescription.value,
        image: featuredImageUrl.value,
        datePublished: '2025-08-11',
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
