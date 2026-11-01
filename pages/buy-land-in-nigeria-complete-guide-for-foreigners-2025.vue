<template>
  <div>
    <section class="bg-primary-950 py-12 text-white sm:py-16">
      <div class="container-page">
        <nav class="text-sm text-primary-200" aria-label="Breadcrumb">
          <NuxtLink to="/" class="hover:text-white">Home</NuxtLink>
          <span class="mx-2" aria-hidden="true">/</span>
          <NuxtLink to="/blog" class="hover:text-white">Properties Guide</NuxtLink>
          <span class="mx-2" aria-hidden="true">/</span>
          <span class="text-white">Buying land as a foreigner</span>
        </nav>
        <p class="mt-8 text-sm font-semibold uppercase tracking-[0.18em] text-primary-200">International Buyer Guide</p>
        <h1 class="mt-3 max-w-4xl text-4xl sm:text-5xl lg:text-6xl">{{ articleTitle }}</h1>
        <p class="mt-5 max-w-3xl text-lg leading-8 text-primary-100">{{ articleSummary }}</p>
        <div class="mt-7 flex flex-wrap gap-3 text-sm text-primary-200">
          <span>By Lexshield Properties</span>
          <span aria-hidden="true">·</span>
          <time datetime="2025-08-08">Published August 8, 2025</time>
          <span aria-hidden="true">·</span>
          <span>Updated November 2026</span>
        </div>
      </div>
    </section>

    <figure class="bg-neutral-100">
      <img
        :src="featuredImage"
        alt="Land in Nigeria for prospective property buyers"
        class="mx-auto max-h-[560px] w-full max-w-6xl object-cover"
        fetchpriority="high"
      />
      <figcaption class="container-page py-2 text-sm text-neutral-500">A local inspection and independent professional checks are essential before buying.</figcaption>
    </figure>

    <main class="container-page grid gap-10 py-10 lg:grid-cols-[minmax(0,1fr)_300px] lg:py-14">
      <article class="min-w-0">
        <p class="text-xl font-medium leading-8 text-neutral-700">
          Nigeria offers a wide range of land and property opportunities, but buying from abroad requires careful planning. Rules on land interests, consent, documentation and registration can depend on the state, the land and the buyer’s circumstances. Use this guide to prepare the right questions—not as a substitute for advice from a qualified Nigerian property lawyer.
        </p>

        <div class="mt-6 rounded-xl border border-warning-200 bg-warning-50 p-5 text-sm leading-6 text-warning-900">
          <strong>Important legal note:</strong> Do not assume that a foreign individual or company can acquire the same interest, for the same term, or through the same process in every state. Before paying a deposit, ask an independent Nigerian property lawyer to confirm eligibility, permitted ownership or lease structure, required approvals, title status and tax obligations for the exact transaction.
        </div>

        <div class="mt-7 rounded-2xl bg-primary-50 p-6">
          <h2 class="text-xl text-neutral-900">Shortlisting land from overseas?</h2>
          <p class="mt-2 leading-7 text-neutral-700">Tell our team your preferred state, intended use and budget. We can share available listing details and help arrange a live or in-person site inspection.</p>
          <div class="mt-4 flex flex-wrap gap-3">
            <NuxtLink to="/contact" class="btn-primary">Speak with our team</NuxtLink>
            <NuxtLink to="/book-inspection" class="btn-outline">Arrange an inspection</NuxtLink>
          </div>
        </div>

        <nav class="mt-8 rounded-xl bg-neutral-50 p-5" aria-label="Article contents">
          <h2 class="text-lg text-neutral-900">In this guide</h2>
          <ul class="mt-3 grid gap-2 text-sm text-primary-700 sm:grid-cols-2">
            <li><a href="#foreign-buyers" class="hover:underline">Can foreigners buy land?</a></li>
            <li><a href="#buyer-structure" class="hover:underline">Choosing a buyer structure</a></li>
            <li><a href="#buying-process" class="hover:underline">Purchase process</a></li>
            <li><a href="#price-guide" class="hover:underline">Location and price guide</a></li>
            <li><a href="#buyer-costs" class="hover:underline">Costs to budget for</a></li>
            <li><a href="#buyer-checklist" class="hover:underline">Due-diligence checklist</a></li>
            <li><a href="#foreigner-faqs" class="hover:underline">Frequently asked questions</a></li>
          </ul>
        </nav>

        <section id="foreign-buyers" class="mt-10 scroll-mt-28">
          <h2 class="text-2xl text-neutral-900 sm:text-3xl">Can foreigners buy land in Nigeria?</h2>
          <p class="mt-4 leading-7 text-neutral-700">
            The answer depends on the state, the type of land interest, the buyer’s status and the transaction structure. Nigeria’s <a href="https://faolex.fao.org/docs/pdf/nig67625.pdf" target="_blank" rel="noopener noreferrer" class="font-semibold text-primary-700 hover:underline">Land Use Act</a> is a key part of the legal framework, but it does not remove the need to check relevant state laws, regulations, title documents and approval requirements for a specific purchase.
          </p>
          <p class="mt-3 leading-7 text-neutral-700">
            Lease length, governor’s or other consent, transfer restrictions and registration steps should be confirmed by a lawyer who represents your interests. Do not rely solely on a seller, agent, online checklist or a general claim that a particular title makes the purchase automatically safe.
          </p>
        </section>

        <section id="buyer-structure" class="mt-10 scroll-mt-28">
          <h2 class="text-2xl text-neutral-900 sm:text-3xl">Who may be involved in a land purchase?</h2>
          <p class="mt-4 leading-7 text-neutral-700">
            A transaction may involve a Nigerian citizen, a non-Nigerian individual or a company. The rights and compliance requirements can differ, and incorporating a Nigerian company does not by itself guarantee that the company can acquire a particular parcel or avoid approvals.
          </p>
          <ul class="mt-4 list-disc space-y-3 pl-5 leading-7 text-neutral-700">
            <li><strong>Individuals:</strong> confirm how your citizenship, residency and intended use affect the interest you may lawfully acquire.</li>
            <li><strong>Companies:</strong> obtain advice on incorporation, beneficial ownership, corporate approvals, land eligibility and any relevant foreign investment requirements.</li>
            <li><strong>Agricultural land:</strong> ask specifically about land-use restrictions, state requirements and any additional conditions for the intended activity.</li>
            <li><strong>Joint or nominee arrangements:</strong> have a lawyer explain the rights, risks and enforceability in writing; avoid informal arrangements that leave ownership unclear.</li>
          </ul>
          <p class="mt-4 leading-7 text-neutral-700">
            Whether you are based in the UK, US, Canada, Australia or elsewhere, get transaction-specific legal advice before committing funds. Diaspora status or a local business partner does not replace title searches or required approvals.
          </p>
        </section>

        <section id="buying-process" class="mt-10 scroll-mt-28">
          <h2 class="text-2xl text-neutral-900 sm:text-3xl">A careful process for acquiring land in Nigeria</h2>
          <ol class="mt-4 list-decimal space-y-4 pl-5 leading-7 text-neutral-700">
            <li>
              <strong>Define your brief.</strong> Decide the state, intended use, budget, access needs and whether you are buying personally or through a company. Ask counsel whether your preferred structure is suitable.
            </li>
            <li>
              <strong>Appoint independent professionals.</strong> Retain a Nigerian property lawyer and a registered surveyor who are accountable to you—not only to the seller or agent.
            </li>
            <li>
              <strong>Verify the land and seller.</strong> Investigate the ownership chain and title with the relevant authorities. Confirm the parcel’s survey, boundaries, land status, planning restrictions, acquisition status, encumbrances and access.
            </li>
            <li>
              <strong>Confirm the legal route.</strong> Have your lawyer identify the interest being transferred, required consents and approvals, applicable state procedures, payment milestones and documents required to complete and register the transaction.
            </li>
            <li>
              <strong>Inspect before completion.</strong> Visit the site in person or appoint a trusted independent representative. If you cannot travel, use a live video walkthrough alongside—not instead of—professional verification.
            </li>
            <li>
              <strong>Document and complete safely.</strong> Use a lawyer-reviewed agreement, traceable payments to the verified recipient, receipts and a written completion plan. Follow through on any required stamping, consent and registration.
            </li>
          </ol>
          <p class="mt-4 leading-7 text-neutral-700">
            Online land-information or e-GIS systems may help with searches in some locations, but availability and records differ. A portal result should not be treated as a complete title investigation.
          </p>
          <NuxtLink to="/blog/how-to-verify-land-documents-nigeria" class="mt-4 inline-flex font-semibold text-primary-700 hover:underline">
            Read our guide to verifying Nigerian land documents →
          </NuxtLink>
        </section>

        <section id="price-guide" class="mt-10 scroll-mt-28">
          <h2 class="text-2xl text-neutral-900 sm:text-3xl">Land prices: compare location and intended use</h2>
          <p class="mt-4 leading-7 text-neutral-700">
            Asking prices vary by exact location, title, access, size, permitted use and infrastructure. The broad figures below were supplied as 2026 market estimates and are included only as initial comparison points—not current verified listings, valuations or guarantees.
          </p>
          <div class="mt-5 overflow-x-auto rounded-xl border border-neutral-200">
            <table class="w-full min-w-[620px] border-collapse text-left text-sm">
              <thead class="bg-primary-50 text-neutral-900">
                <tr>
                  <th scope="col" class="p-4 font-bold">Location</th>
                  <th scope="col" class="p-4 font-bold">Supplied indicative range</th>
                  <th scope="col" class="p-4 font-bold">Buyer considerations</th>
                </tr>
              </thead>
              <tbody class="divide-y divide-neutral-200 text-neutral-700">
                <tr><td class="p-4 font-semibold">Ikoyi / Banana Island</td><td class="p-4">₦800,000+ per sqm</td><td class="p-4">Premium urban title and development requirements</td></tr>
                <tr><td class="p-4 font-semibold">Lekki Phase 1</td><td class="p-4">₦350,000–₦600,000 per sqm</td><td class="p-4">Exact street, title and permitted use</td></tr>
                <tr><td class="p-4 font-semibold">Ibeju-Lekki / Epe</td><td class="p-4">₦15 million–₦50 million per plot</td><td class="p-4">Plot size, access, acquisition and infrastructure</td></tr>
                <tr><td class="p-4 font-semibold">Maitama, Abuja</td><td class="p-4">₦600 million–₦1.2 billion per plot</td><td class="p-4">Parcel size, planning and government processes</td></tr>
                <tr><td class="p-4 font-semibold">Ibadan / Ogun State</td><td class="p-4">₦2 million–₦15 million per plot</td><td class="p-4">Town, estate, title and plot dimensions</td></tr>
              </tbody>
            </table>
          </div>
          <p class="mt-3 text-sm leading-6 text-neutral-500">
            Ranges and units are reproduced as supplied and may not be comparable across locations. Confirm the date, currency, exact plot area and current price directly before making financial decisions.
          </p>
          <p class="mt-4 leading-7 text-neutral-700">
            Explore current <NuxtLink to="/properties/ibeju-lekki" class="font-semibold text-primary-700 hover:underline">Ibeju-Lekki listings</NuxtLink>, <NuxtLink to="/properties/apete-ibadan" class="font-semibold text-primary-700 hover:underline">Apete, Ibadan properties</NuxtLink> or <NuxtLink to="/properties/mowe-ofada" class="font-semibold text-primary-700 hover:underline">Mowe–Ofada estates</NuxtLink>. Ask us for the current listing details, plot dimensions and fees rather than relying on an old price table.
          </p>
        </section>

        <section id="buyer-costs" class="mt-10 scroll-mt-28">
          <h2 class="text-2xl text-neutral-900 sm:text-3xl">Budget for the full cost—not just the asking price</h2>
          <p class="mt-4 leading-7 text-neutral-700">
            In addition to the purchase price, a buyer may need to budget for legal advice, surveys, searches, documentation, applicable consent and registration, taxes or duties, agency fees and site or infrastructure costs. Which charges apply—and how they are calculated—depends on the location, transaction and current rules.
          </p>
          <p class="mt-3 leading-7 text-neutral-700">
            Request an itemized written breakdown before paying. Ask a property lawyer and tax professional to confirm current rates and who is responsible for each amount; do not rely on generic percentages or a copied online tax table.
          </p>
        </section>

        <section class="mt-10 rounded-2xl border border-primary-100 bg-primary-50 p-6 sm:p-8">
          <h2 class="text-2xl text-neutral-900">Before you transfer funds from abroad</h2>
          <ul class="mt-4 list-disc space-y-2 pl-5 leading-7 text-neutral-700">
            <li>Independently verify the seller, recipient account and authority to sell.</li>
            <li>Get the sale agreement and payment milestones reviewed by your own lawyer.</li>
            <li>Use traceable payment channels and keep receipts and correspondence.</li>
            <li>Do not let urgency, guaranteed appreciation or a title label replace due diligence.</li>
          </ul>
        </section>

        <section class="mt-10">
          <h2 class="text-2xl text-neutral-900 sm:text-3xl">Explore property locations</h2>
          <div class="mt-5 grid gap-4 sm:grid-cols-2">
            <NuxtLink to="/properties/ibeju-lekki" class="card p-5 transition hover:border-primary-300">
              <h3 class="text-lg text-neutral-900">Ibeju-Lekki, Lagos</h3>
              <p class="mt-2 text-sm leading-6 text-neutral-600">Review available listings and request current parcel information.</p>
              <span class="mt-3 inline-block font-semibold text-primary-700">View location →</span>
            </NuxtLink>
            <NuxtLink to="/properties/apete-ibadan" class="card p-5 transition hover:border-primary-300">
              <h3 class="text-lg text-neutral-900">Apete, Ibadan</h3>
              <p class="mt-2 text-sm leading-6 text-neutral-600">Explore property opportunities in Ibadan, Oyo State.</p>
              <span class="mt-3 inline-block font-semibold text-primary-700">View location →</span>
            </NuxtLink>
            <NuxtLink to="/properties/mowe-ofada" class="card p-5 transition hover:border-primary-300">
              <h3 class="text-lg text-neutral-900">Mowe–Ofada, Ogun</h3>
              <p class="mt-2 text-sm leading-6 text-neutral-600">Ask about available estates and arrange an inspection.</p>
              <span class="mt-3 inline-block font-semibold text-primary-700">View location →</span>
            </NuxtLink>
            <NuxtLink to="/properties" class="card p-5 transition hover:border-primary-300">
              <h3 class="text-lg text-neutral-900">All listed properties</h3>
              <p class="mt-2 text-sm leading-6 text-neutral-600">Browse the current property catalogue.</p>
              <span class="mt-3 inline-block font-semibold text-primary-700">Browse properties →</span>
            </NuxtLink>
          </div>
        </section>

        <section class="mt-12 rounded-2xl bg-primary-900 p-6 text-white sm:p-8">
          <p class="text-sm font-semibold uppercase tracking-wider text-primary-200">Your next step</p>
          <h2 class="mt-2 text-2xl sm:text-3xl">Buy with local support and independent checks</h2>
          <p class="mt-3 leading-7 text-primary-100">
            Share your preferred location, budget and intended use. Lexshield can provide details on available listings and help coordinate a site visit. Engage your own Nigerian property lawyer and surveyor to verify the transaction before you commit.
          </p>
          <div class="mt-6 flex flex-wrap gap-3">
            <NuxtLink to="/contact" class="btn-secondary">Request property details</NuxtLink>
            <NuxtLink to="/book-inspection" class="btn-outline">Book a site inspection</NuxtLink>
            <a :href="whatsappUrl" target="_blank" rel="noopener noreferrer" class="btn-whatsapp">Chat with our team</a>
          </div>
        </section>

        <section id="foreigner-faqs" class="mt-12 scroll-mt-28">
          <h2 class="text-2xl text-neutral-900 sm:text-3xl">Frequently asked questions</h2>
          <div class="mt-5 divide-y divide-neutral-200">
            <details v-for="faq in faqs" :key="faq.question" class="py-4">
              <summary class="cursor-pointer font-semibold text-neutral-900">{{ faq.question }}</summary>
              <p class="mt-3 leading-7 text-neutral-700">{{ faq.answer }}</p>
            </details>
          </div>
        </section>

        <div class="mt-10 border-t border-neutral-200 pt-6 text-sm leading-6 text-neutral-600">
          <p>For more buyer guidance, read our <NuxtLink to="/blog/how-to-verify-land-documents-nigeria" class="font-semibold text-primary-700 hover:underline">land document verification guide</NuxtLink> and <NuxtLink to="/price-of-1-acre-of-land-in-nigeria-2026-comprehensive-guide" class="font-semibold text-primary-700 hover:underline">2026 land price guide</NuxtLink>.</p>
          <p class="mt-2">This article is general information, not legal, tax or investment advice. Laws and requirements can change; consult qualified professionals about your circumstances.</p>
        </div>
      </article>

      <aside class="lg:sticky lg:top-28 lg:self-start">
        <div class="rounded-2xl border border-primary-100 bg-primary-50 p-6">
          <p class="text-sm font-semibold uppercase tracking-wider text-primary-700">Buying from overseas?</p>
          <h2 class="mt-2 text-xl text-neutral-900">Get details on available properties</h2>
          <p class="mt-3 text-sm leading-6 text-neutral-600">Tell us your preferred location and budget. We can share current listing information and help arrange an inspection.</p>
          <NuxtLink to="/contact" class="btn-primary mt-5 w-full">Talk to Lexshield</NuxtLink>
          <NuxtLink to="/book-inspection" class="btn-outline mt-2 w-full">Book an inspection</NuxtLink>
          <p class="mt-4 text-xs leading-5 text-neutral-500">Use an independent lawyer and surveyor to verify legal eligibility, title and boundaries.</p>
        </div>
        <div class="mt-5 rounded-2xl border border-neutral-200 p-6">
          <h2 class="font-bold text-neutral-900">Related guides</h2>
          <NuxtLink to="/blog/how-to-verify-land-documents-nigeria" class="mt-3 block text-sm font-semibold leading-6 text-primary-700 hover:underline">How to verify land documents →</NuxtLink>
          <NuxtLink to="/price-of-1-acre-of-land-in-nigeria-2026-comprehensive-guide" class="mt-3 block text-sm font-semibold leading-6 text-primary-700 hover:underline">Land prices in Nigeria: 2026 guide →</NuxtLink>
          <NuxtLink to="/blog" class="mt-3 block text-sm font-semibold text-primary-700 hover:underline">Browse all property guides →</NuxtLink>
        </div>
      </aside>
    </main>
  </div>
</template>

<script setup lang="ts">
const config = useRuntimeConfig()
const { buildUrl } = useWhatsApp()
const whatsappUrl = computed(() => buildUrl())

const slug = 'buy-land-in-nigeria-complete-guide-for-foreigners-2025'
const featuredImage = '/buy-land-in-nigeria.webp'
const featuredImageUrl = computed(() => `${config.public.siteUrl.replace(/\/$/, '')}${featuredImage}`)
const articleTitle = 'Buy Land in Nigeria: Complete Guide for Foreigners (2025)'
const articleSummary = 'Learn how international buyers can approach land purchases in Nigeria, compare locations, budget for costs and verify eligibility and title before committing.'
const seoTitle = computed(() => `${articleTitle} | Lexshield Properties`)
const seoDescription = computed(() => `${articleSummary} Get practical guidance and request current property details from Lexshield Properties.`)
const canonical = computed(() => `${config.public.siteUrl.replace(/\/$/, '')}/${slug}`)

const faqs = [
  {
    question: 'Can a foreigner buy land in Nigeria?',
    answer: 'The answer depends on the state, buyer, land and legal interest involved. Before paying, ask an independent Nigerian property lawyer to confirm your eligibility, the permitted ownership or lease structure and all required approvals for the specific parcel.',
  },
  {
    question: 'Can a foreign buyer own land outright or does it have to be a lease?',
    answer: 'Do not assume the same ownership term applies nationwide. The interest available and its duration depend on the applicable law and transaction. Have a lawyer review the title and sale documents and explain your rights in writing.',
  },
  {
    question: 'Does setting up a Nigerian company make it easier for a foreigner to buy land?',
    answer: 'A locally incorporated company does not automatically make a land acquisition permissible or remove consent and registration requirements. Get advice on the company’s ownership, eligibility and the specific land transaction before using a corporate structure.',
  },
  {
    question: 'What documents should a foreign buyer check?',
    answer: 'The relevant documents depend on the parcel and state. A lawyer should investigate the seller’s ownership, chain of title, land status, applicable consents and registration requirements. An independent surveyor should confirm the parcel’s boundaries and area.',
  },
  {
    question: 'Can I buy Nigerian land without travelling there?',
    answer: 'You may be able to arrange parts of a transaction remotely, but remote completion increases the importance of independent local representation, identity and payment checks, legal review and a physical site inspection by a trusted professional.',
  },
  {
    question: 'What extra fees and taxes should I budget for?',
    answer: 'Potential costs can include legal and survey fees, searches, applicable duties, consent or registration charges, agency fees and site-related costs. The amounts and who pays them depend on current rules and the agreement; request an itemized estimate from your lawyer and tax adviser.',
  },
]

useSeoMeta(() => ({
  title: seoTitle.value,
  description: seoDescription.value,
  ogTitle: seoTitle.value,
  ogDescription: seoDescription.value,
  ogImage: featuredImageUrl.value,
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
        image: featuredImageUrl.value,
        datePublished: '2025-08-08',
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
