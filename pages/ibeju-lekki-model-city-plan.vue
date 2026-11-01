<template>
  <div>
    <section class="bg-primary-950 py-12 text-white sm:py-16">
      <div class="container-page">
        <nav class="text-sm text-primary-200" aria-label="Breadcrumb">
          <NuxtLink to="/" class="hover:text-white">Home</NuxtLink>
          <span class="mx-2" aria-hidden="true">/</span>
          <NuxtLink to="/blog" class="hover:text-white">Properties Guide</NuxtLink>
          <span class="mx-2" aria-hidden="true">/</span>
          <span class="text-white">Ibeju-Lekki Model City Plan</span>
        </nav>
        <p class="mt-8 text-sm font-semibold uppercase tracking-[0.18em] text-primary-200">Lagos Planning &amp; Property Guide</p>
        <h1 class="mt-3 max-w-4xl text-4xl sm:text-5xl lg:text-6xl">{{ articleTitle }}</h1>
        <p class="mt-5 max-w-3xl text-lg leading-8 text-primary-100">{{ articleSummary }}</p>
        <div class="mt-7 flex flex-wrap gap-3 text-sm text-primary-200">
          <span>By Lexshield Properties</span>
          <span aria-hidden="true">·</span>
          <time datetime="2025-02-27">Published February 27, 2025</time>
        </div>
      </div>
    </section>

    <figure class="bg-neutral-100">
      <img
        :src="featuredImage"
        alt="Draft Ibeju-Lekki Model City Plan map"
        class="mx-auto max-h-[650px] w-full max-w-6xl object-contain"
        fetchpriority="high"
      />
      <figcaption class="container-page py-2 text-sm text-neutral-500">Draft plan image supplied for this article. Consult Lagos State for authoritative planning documents and updates.</figcaption>
    </figure>

    <main class="container-page grid gap-10 py-10 lg:grid-cols-[minmax(0,1fr)_300px] lg:py-14">
      <article class="min-w-0">
        <p class="text-xl font-medium leading-8 text-neutral-700">
          In February 2025, reports described a public inspection period for a draft Ibeju-Lekki Model City Plan covering 2024–2044. The proposed planning framework was intended to guide land use, infrastructure, housing and environmental development in the area. A draft plan is not a guarantee that a specific road, facility or development will proceed, or that a nearby property will increase in value.
        </p>

        <div class="mt-6 rounded-xl border border-warning-200 bg-warning-50 p-5 text-sm leading-6 text-warning-900">
          <strong>Historical information:</strong> The public display dates supplied with the original article—February 26 to April 4, 2025—and the stated stakeholder presentation date of April 11, 2025 have passed. This page does not confirm whether the plan was finalized or amended. Check the latest notices and approved documents with Lagos State before relying on any planning information.
        </div>

        <div class="mt-7 rounded-2xl bg-primary-50 p-6">
          <h2 class="text-xl text-neutral-900">Researching property in Ibeju-Lekki?</h2>
          <p class="mt-2 leading-7 text-neutral-700">Talk to our team about current listings and arrange a site visit. Verify each parcel’s title, planning status, boundaries and access independently before purchasing.</p>
          <div class="mt-4 flex flex-wrap gap-3">
            <NuxtLink to="/properties/ibeju-lekki" class="btn-primary">View Ibeju-Lekki properties</NuxtLink>
            <NuxtLink to="/contact" class="btn-outline">Ask our team</NuxtLink>
          </div>
        </div>

        <nav class="mt-8 rounded-xl bg-neutral-50 p-5" aria-label="Article contents">
          <h2 class="text-lg text-neutral-900">In this guide</h2>
          <ul class="mt-3 grid gap-2 text-sm text-primary-700 sm:grid-cols-2">
            <li><a href="#plan-overview" class="hover:underline">Plan overview</a></li>
            <li><a href="#public-review" class="hover:underline">2025 public review</a></li>
            <li><a href="#planning-considerations" class="hover:underline">Planning considerations</a></li>
            <li><a href="#property-buyers" class="hover:underline">What property buyers should check</a></li>
            <li><a href="#ibeju-faqs" class="hover:underline">Frequently asked questions</a></li>
          </ul>
        </nav>

        <section id="plan-overview" class="mt-10 scroll-mt-28">
          <h2 class="text-2xl text-neutral-900 sm:text-3xl">What is the Ibeju-Lekki Model City Plan?</h2>
          <p class="mt-4 leading-7 text-neutral-700">
            A model city plan is a long-term spatial planning framework that can set out how an area may accommodate housing, transport, commerce, public services and environmental needs. The draft Ibeju-Lekki plan was reported as covering the 2024–2044 period and as being developed for public input before the next planning steps.
          </p>
          <p class="mt-3 leading-7 text-neutral-700">
            Proposed land use and infrastructure should be checked against the latest official plan, applicable planning rules and the specific parcel. A map or draft designation alone does not establish a property’s title, zoning approval, development permission or value.
          </p>
          <p class="mt-3 leading-7 text-neutral-700">
            The supplied contemporaneous reporting is available from <a href="https://www.environewsnigeria.com/lagos-begins-public-display-of-draft-ibeju-lekki-model-city-plan/" target="_blank" rel="noopener noreferrer" class="font-semibold text-primary-700 hover:underline">Environment News Nigeria</a>. Use it as background context and confirm current status with Lagos State authorities.
          </p>
        </section>

        <section id="public-review" class="mt-10 scroll-mt-28">
          <h2 class="text-2xl text-neutral-900 sm:text-3xl">The 2025 public inspection period</h2>
          <p class="mt-4 leading-7 text-neutral-700">
            Information provided for the original article stated that the draft was made available for inspection from February 26 through April 4, 2025, with a stakeholder presentation announced for April 11, 2025. Those dates are historical. The listed inspection period and event must not be interpreted as currently open or as confirmation of the plan’s final adoption.
          </p>
          <p class="mt-3 leading-7 text-neutral-700">
            If you need to understand a current designation or development control, contact the relevant Lagos State physical planning authority and request the latest approved plan and written guidance for the exact location. Confirm that any public notice or copy you rely on is current.
          </p>
          <p class="mt-3 leading-7 text-neutral-700">
            For general state information, visit the <a href="https://lagosstate.gov.ng/" target="_blank" rel="noopener noreferrer" class="font-semibold text-primary-700 hover:underline">Lagos State Government website</a>. Confirm the correct department and current contact details through official channels.
          </p>
        </section>

        <section id="planning-considerations" class="mt-10 scroll-mt-28">
          <h2 class="text-2xl text-neutral-900 sm:text-3xl">Potential planning themes—and what they do not guarantee</h2>
          <p class="mt-4 leading-7 text-neutral-700">
            Long-range plans commonly consider coordinated growth, transport connections, housing demand, economic activity and environmental management. These goals can help communities and decision-makers assess future land use, but implementation depends on decisions, funding, approvals and changing circumstances.
          </p>
          <ul class="mt-4 list-disc space-y-3 pl-5 leading-7 text-neutral-700">
            <li><strong>Infrastructure:</strong> distinguish existing infrastructure from proposed routes, funded projects and unconfirmed concepts.</li>
            <li><strong>Land use:</strong> confirm whether the current designation permits your intended residential, commercial or other use.</li>
            <li><strong>Environment:</strong> check drainage, flood exposure, wetlands, setbacks and applicable environmental controls.</li>
            <li><strong>Community effects:</strong> seek current information about acquisition, right-of-way, resettlement or other land constraints.</li>
            <li><strong>Property value:</strong> do not treat a draft plan or nearby project as a promise of appreciation, rental income or resale demand.</li>
          </ul>
        </section>

        <section id="property-buyers" class="mt-10 scroll-mt-28">
          <h2 class="text-2xl text-neutral-900 sm:text-3xl">What should property buyers check in Ibeju-Lekki?</h2>
          <ol class="mt-4 list-decimal space-y-3 pl-5 leading-7 text-neutral-700">
            <li>Have a qualified property lawyer investigate the seller’s ownership, chain of title, land status and any required consent.</li>
            <li>Use a registered surveyor to confirm the parcel’s boundaries and compare the survey with current official records.</li>
            <li>Check the latest official land-use and planning information for the exact site; do not rely on an old draft map alone.</li>
            <li>Visit the property and assess current road access, drainage, utilities and surrounding development.</li>
            <li>Request current written details of price, plot size, fees, payment terms and any development or allocation commitments.</li>
          </ol>
          <p class="mt-4 leading-7 text-neutral-700">
            Read our <NuxtLink to="/blog/how-to-verify-land-documents-nigeria" class="font-semibold text-primary-700 hover:underline">guide to verifying land documents</NuxtLink> and browse <NuxtLink to="/properties/ibeju-lekki" class="font-semibold text-primary-700 hover:underline">available Ibeju-Lekki properties</NuxtLink>. Listing information is not a substitute for independent title, survey and planning checks.
          </p>
        </section>

        <section class="mt-10 rounded-2xl bg-primary-900 p-6 text-white sm:p-8">
          <p class="text-sm font-semibold uppercase tracking-wider text-primary-200">Considering a property?</p>
          <h2 class="mt-2 text-2xl sm:text-3xl">Get current Ibeju-Lekki listing details</h2>
          <p class="mt-3 leading-7 text-primary-100">
            Tell us your preferred location, budget and intended use. Our team can provide current listing details and help arrange an inspection. Verify the plan, land status and title with the appropriate professionals before making a decision.
          </p>
          <div class="mt-6 flex flex-wrap gap-3">
            <NuxtLink to="/properties/ibeju-lekki" class="btn-secondary">Explore properties</NuxtLink>
            <NuxtLink to="/contact" class="btn-outline">Contact Lexshield</NuxtLink>
            <NuxtLink to="/book-inspection" class="btn-outline">Book an inspection</NuxtLink>
          </div>
        </section>

        <section id="ibeju-faqs" class="mt-12 scroll-mt-28">
          <h2 class="text-2xl text-neutral-900 sm:text-3xl">Frequently asked questions</h2>
          <div class="mt-5 divide-y divide-neutral-200">
            <details v-for="faq in faqs" :key="faq.question" class="py-4">
              <summary class="cursor-pointer font-semibold text-neutral-900">{{ faq.question }}</summary>
              <p class="mt-3 leading-7 text-neutral-700">{{ faq.answer }}</p>
            </details>
          </div>
        </section>

        <div class="mt-10 border-t border-neutral-200 pt-6 text-sm leading-6 text-neutral-600">
          <p>Explore <NuxtLink to="/properties/ibeju-lekki" class="font-semibold text-primary-700 hover:underline">Ibeju-Lekki properties</NuxtLink>, read our <NuxtLink to="/price-of-1-acre-of-land-in-nigeria-2026-comprehensive-guide" class="font-semibold text-primary-700 hover:underline">Nigeria land price guide</NuxtLink> or browse all <NuxtLink to="/blog" class="font-semibold text-primary-700 hover:underline">property guides</NuxtLink>.</p>
          <p class="mt-2">This article summarizes historical public information and is not planning, legal, investment or valuation advice. Verify current information with official sources and qualified professionals.</p>
        </div>
      </article>

      <aside class="lg:sticky lg:top-28 lg:self-start">
        <div class="rounded-2xl border border-primary-100 bg-primary-50 p-6">
          <p class="text-sm font-semibold uppercase tracking-wider text-primary-700">Researching Ibeju-Lekki?</p>
          <h2 class="mt-2 text-xl text-neutral-900">Compare currently available properties</h2>
          <p class="mt-3 text-sm leading-6 text-neutral-600">Ask our team for current listing details and arrange an inspection of the specific site.</p>
          <NuxtLink to="/properties/ibeju-lekki" class="btn-primary mt-5 w-full">View properties</NuxtLink>
          <NuxtLink to="/contact" class="btn-outline mt-2 w-full">Talk to our team</NuxtLink>
          <p class="mt-4 text-xs leading-5 text-neutral-500">Confirm planning status and title independently before purchase.</p>
        </div>
        <div class="mt-5 rounded-2xl border border-neutral-200 p-6">
          <h2 class="font-bold text-neutral-900">Related guides</h2>
          <NuxtLink to="/best-place-to-buy-land-in-ibadan" class="mt-3 block text-sm font-semibold leading-6 text-primary-700 hover:underline">Where to buy land in Ibadan →</NuxtLink>
          <NuxtLink to="/blog/how-to-verify-land-documents-nigeria" class="mt-3 block text-sm font-semibold leading-6 text-primary-700 hover:underline">Verify land documents →</NuxtLink>
          <NuxtLink to="/blog" class="mt-3 block text-sm font-semibold text-primary-700 hover:underline">Browse property guides →</NuxtLink>
        </div>
      </aside>
    </main>
  </div>
</template>

<script setup lang="ts">
const config = useRuntimeConfig()

const slug = 'ibeju-lekki-model-city-plan'
const featuredImage = '/ibeju-lekki-model-city-plan.webp'
const featuredImageUrl = computed(() => `${config.public.siteUrl.replace(/\/$/, '')}${featuredImage}`)
const articleTitle = 'Ibeju-Lekki Model City Plan: Draft 2024–2044 and What Buyers Should Know'
const articleSummary = 'Learn what the draft Ibeju-Lekki Model City Plan covered, review the historical 2025 public consultation dates and find practical checks for property buyers.'
const seoTitle = computed(() => `${articleTitle} | Lexshield Properties`)
const seoDescription = computed(() => `${articleSummary} Check current planning information with Lagos State before making property decisions.`)
const canonical = computed(() => `${config.public.siteUrl.replace(/\/$/, '')}/${slug}`)

const faqs = [
  {
    question: 'What is the Ibeju-Lekki Model City Plan?',
    answer: 'It is a draft long-range spatial planning framework reported to cover Ibeju-Lekki from 2024 to 2044. Buyers should check with Lagos State for the latest approved plan, land-use designation and current planning rules.',
  },
  {
    question: 'When was the draft plan available for public inspection?',
    answer: 'The information supplied for this article stated that public inspection ran from February 26 to April 4, 2025, with a stakeholder presentation announced for April 11, 2025. Those dates have passed; confirm the plan’s current status with Lagos State.',
  },
  {
    question: 'Has the Ibeju-Lekki Model City Plan been finalized?',
    answer: 'This article does not verify whether the draft was finalized, amended or adopted. Contact the relevant Lagos State planning authority and request the current official plan and notices.',
  },
  {
    question: 'Does the city plan guarantee new roads or property appreciation?',
    answer: 'No. A draft or adopted plan does not by itself guarantee that a project will be funded, completed or increase the value of a particular property. Verify project status, land use, title and access independently.',
  },
  {
    question: 'How can a property buyer check land use in Ibeju-Lekki?',
    answer: 'Ask the relevant Lagos State planning authority for current official land-use information for the exact parcel, and have an independent property lawyer and registered surveyor review title, boundaries and land status.',
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
        headline: articleTitle,
        description: seoDescription.value,
        image: featuredImageUrl.value,
        datePublished: '2025-02-27',
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
