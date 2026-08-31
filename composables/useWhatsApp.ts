export function useWhatsApp() {
  const config = useRuntimeConfig()
  const number = computed(() => config.public.whatsappNumber as string)

  function buildMessage(property?: {
    name?: string
    location_name?: string
    price_display?: string | null
  }): string {
    if (property?.name) {
      const msg = `Hello Lexshield Properties, I'm interested in ${property.name} located in ${property.location_name} currently listed from ${property.price_display || ''}. Please send me more information and available inspection dates.`
      return encodeURIComponent(msg)
    }
    return encodeURIComponent('Hello Lexshield Properties, I would like to know more about your available properties and payment plans.')
  }

  function buildUrl(property?: {
    name?: string
    location_name?: string
    price_display?: string | null
  }): string {
    return `https://wa.me/${number.value}?text=${buildMessage(property)}`
  }

  function buildPlotUrl(property: { name: string; location_name?: string; city?: string | null; initial_deposit?: number | null; property_statutory_fees?: unknown[] }, option: { label: string; outright_price: number }) {
    const price = `₦${Number((option.outright_price / 1000000).toFixed(2))}M`
    const deposit = property.initial_deposit ? ` and ${formatCompact(property.initial_deposit)} initial deposit` : ''
    const fees = property.property_statutory_fees?.length ? ', statutory fees' : ''
    const message = `Hello Lexshield Properties, I'm interested in the ${option.label} plot at ${property.name}, ${property.location_name || property.city || ''}. I saw the current land price from ${price}${deposit}. Please send me more information about availability${fees} and site inspection.`
    return `https://wa.me/${number.value}?text=${encodeURIComponent(message)}`
  }

  function formatCompact(value: number) {
    if (value >= 1000000) return `₦${Number((value / 1000000).toFixed(2))}M`
    if (value >= 1000) return `₦${Number((value / 1000).toFixed(0))}K`
    return `₦${value}`
  }

  function buildPlanUrl(property: { name:string; location_name:string }, option: { label:string }, plan: { label:string; price:number }) {
    const message = `Hello Lexshield Properties, I'm interested in the ${option.label} plot at ${property.name}, ${property.location_name}. I'm considering the ${plan.label.toLowerCase()} payment plan currently advertised at ${formatCompact(plan.price)}. Please confirm availability and help me arrange a site inspection.`
    return `https://wa.me/${number.value}?text=${encodeURIComponent(message)}`
  }

  return {
    number,
    buildUrl,
    buildPlotUrl,
    buildPlanUrl,
  }
}
