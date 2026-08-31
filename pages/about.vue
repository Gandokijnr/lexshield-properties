<template>
  <div>
    <section class="bg-primary-950 py-16 text-white sm:py-24">
      <div class="container-page max-w-4xl text-center">
        <p class="text-sm font-semibold uppercase tracking-[0.2em] text-primary-200">About Lexshield Properties</p>
        <h1 class="mt-4 text-4xl font-extrabold sm:text-6xl">Making property ownership more accessible</h1>
        <p class="mx-auto mt-6 max-w-3xl text-lg leading-8 text-primary-100">We help homebuyers and investors explore landed-property opportunities through clear information, flexible purchase options and a straightforward process.</p>
        <div class="mt-8 flex flex-wrap justify-center gap-3"><NuxtLink to="/properties" class="btn-secondary">Explore Properties</NuxtLink><NuxtLink to="/book-inspection" class="btn border border-white/40 bg-white/10 text-white hover:bg-white/20">Book an Inspection</NuxtLink></div>
      </div>
    </section>

    <section class="section"><div class="container-page grid items-start gap-10 lg:grid-cols-[1.1fr_.9fr] lg:gap-16">
      <div><p class="text-sm font-semibold uppercase tracking-wider text-primary-700">Who we are</p><h2 class="mt-3 text-3xl text-neutral-900 sm:text-4xl">A trusted partner for Nigerian property buyers</h2><div class="mt-5 space-y-4 text-base leading-8 text-neutral-600"><p>Lexshield Properties Limited is a Nigerian real estate company focused on landed properties, housing opportunities and property investment.</p><p>Our concern is to help make housing and real estate products achievable for more Nigerians. High land and building costs can place ownership beyond the reach of many households, so we work to present accessible opportunities and flexible payment options.</p><p>Whether you are buying your first plot or expanding an investment portfolio, our goal is to make the journey easier to understand and more transparent.</p></div></div>
      <aside class="rounded-2xl bg-primary-50 p-7 ring-1 ring-primary-100"><ShieldCheck class="h-10 w-10 text-primary-700"/><h2 class="mt-5 text-2xl text-neutral-900">Our commitment</h2><p class="mt-3 leading-7 text-neutral-600">Property decisions deserve clarity. We encourage buyers to inspect properties, review current commercial terms and complete appropriate due diligence before purchase.</p><NuxtLink to="/contact" class="mt-5 inline-flex font-semibold text-primary-700 hover:text-primary-800">Speak with our team →</NuxtLink></aside>
    </div></section>

    <section class="section bg-neutral-100"><div class="container-page grid gap-6 md:grid-cols-2">
      <article class="card p-7 sm:p-9"><Eye class="h-9 w-9 text-primary-700"/><p class="mt-5 text-sm font-semibold uppercase tracking-wider text-primary-700">Our Vision</p><h2 class="mt-2 text-2xl text-neutral-900">A household name for homeowners across Africa</h2><p class="mt-4 leading-7 text-neutral-600">To become the household name for homeowners across Africa by helping more people move confidently towards property ownership.</p></article>
      <article class="card p-7 sm:p-9"><Target class="h-9 w-9 text-primary-700"/><p class="mt-5 text-sm font-semibold uppercase tracking-wider text-primary-700">Our Mission</p><h2 class="mt-2 text-2xl text-neutral-900">Real estate opportunities for homeowners and investors</h2><p class="mt-4 leading-7 text-neutral-600">To make real estate products achievable for homeowners and investors while applying strong corporate-governance practices.</p></article>
    </div></section>

    <section class="section"><div class="container-page"><div class="mx-auto max-w-2xl text-center"><p class="text-sm font-semibold uppercase tracking-wider text-primary-700">What guides us</p><h2 class="mt-3 text-3xl text-neutral-900 sm:text-4xl">Our Core Values</h2><p class="mt-4 text-neutral-600">These principles shape how we serve buyers, investors and the communities around our properties.</p></div><div class="mt-9 grid gap-4 sm:grid-cols-2 lg:grid-cols-3"><article v-for="value in values" :key="value.title" class="rounded-xl border border-neutral-200 p-5 transition hover:border-primary-300 hover:bg-primary-50"><component :is="value.icon" class="h-7 w-7 text-primary-700"/><h3 class="mt-4 text-lg">{{ value.title }}</h3><p class="mt-2 text-sm leading-6 text-neutral-600">{{ value.description }}</p></article></div></div></section>

    <section class="section bg-primary-900 text-white"><div class="container-page grid items-center gap-10 lg:grid-cols-2 lg:gap-16"><div><p class="text-sm font-semibold uppercase tracking-wider text-primary-200">Looking ahead</p><h2 class="mt-3 text-3xl sm:text-4xl">Our Strategic Priorities</h2><p class="mt-5 leading-8 text-primary-100">Lexshield’s long-term ambition is to build a meaningful presence across Nigeria and provide affordable housing estates with flexible payment structures. The vision includes both completed homes and serviced plots for buyers who want to build their own designs.</p><p class="mt-4 leading-8 text-primary-100">We aim to collaborate responsibly with relevant public authorities, individuals and organisations where appropriate to support housing development.</p><a href="https://www.vanguardngr.com/2022/06/property-investors-no-longer-vulnerable-in-nigeria-lexshield/" target="_blank" rel="noopener noreferrer" class="mt-6 inline-flex items-center gap-2 font-semibold text-secondary-300 hover:text-secondary-200">Read independent press coverage <ExternalLink class="h-4 w-4"/></a></div><blockquote class="rounded-2xl border border-white/15 bg-white/10 p-7 text-xl font-semibold leading-9 backdrop-blur sm:p-9">“Our mission is to make real estate products achievable for homeowners and investors through responsible service and strong corporate governance.”</blockquote></div></section>

    <section class="section"><div class="container-page rounded-2xl bg-secondary-50 px-6 py-10 text-center ring-1 ring-secondary-100 sm:px-10"><h2 class="text-3xl text-neutral-900">Start your property journey with Lexshield</h2><p class="mx-auto mt-3 max-w-2xl text-neutral-600">Browse current properties, compare verified pricing and arrange an inspection with our team.</p><div class="mt-7 flex flex-wrap justify-center gap-3"><NuxtLink to="/properties" class="btn-primary">View Available Properties</NuxtLink><NuxtLink to="/book-inspection" class="btn-secondary">Book Site Inspection</NuxtLink></div></div></section>
  </div>
</template>

<script setup lang="ts">
import { Eye, ExternalLink, Handshake, HeartHandshake, Scale, ShieldCheck, Target, Users, UserStar } from 'lucide-vue-next'
const config=useRuntimeConfig(); const canonical=`${config.public.siteUrl.replace(/\/$/,'')}/about`
const values=[
  {icon:UserStar,title:'Exceptional Service',description:'We aim to make every interaction helpful, responsive and focused on the buyer’s needs.'},
  {icon:Scale,title:'Honesty',description:'We value clear communication about available property information, pricing and next steps.'},
  {icon:Users,title:'Teamwork',description:'Our team works together to support customers from initial enquiry through inspection and allocation.'},
  {icon:Handshake,title:'Community Involvement',description:'We recognise that responsible property development should consider the communities around it.'},
  {icon:ShieldCheck,title:'Responsibility',description:'We take our obligations seriously and encourage buyers to make informed property decisions.'},
  {icon:HeartHandshake,title:'Client Priority',description:'Customer goals remain central to the guidance and service we provide.'},
]
useSeoMeta({title:'About Lexshield Properties | Nigerian Real Estate Company',description:'Learn about Lexshield Properties, our mission, vision and commitment to accessible landed-property opportunities for Nigerian homeowners and investors.',ogTitle:'About Lexshield Properties',ogDescription:'Discover Lexshield Properties’ mission, values and approach to helping Nigerian homeowners and investors explore landed-property opportunities.',ogType:'website',ogUrl:canonical,twitterCard:'summary_large_image'})
useHead({link:[{rel:'canonical',href:canonical}],script:[{type:'application/ld+json',innerHTML:JSON.stringify({'@context':'https://schema.org','@type':'RealEstateAgent',name:'Lexshield Properties Limited',url:config.public.siteUrl,description:'A Nigerian real estate company focused on landed properties and property investment opportunities.',telephone:config.public.phoneNumber,email:config.public.email,areaServed:'Nigeria'})}]})
</script>
