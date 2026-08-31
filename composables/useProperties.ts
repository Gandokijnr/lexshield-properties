import type { Property } from '~/types/database'

const propertySelect = `
  *,
  property_plot_options (
    *,
    property_payment_plans (*)
  ),
  property_images (*)
  ,property_statutory_fees (*)
  ,property_amenities (*)
`

export function useProperties() {
  async function list(filters: { featured?: boolean; locationSlug?: string; city?: string; search?: string } = {}) {
    const supabase = useSupabase()
    let query = supabase
      .from('properties')
      .select(`${propertySelect}, locations!inner(slug)`)
      .eq('is_active', true)
      .eq('published', true)
      .order('sort_order')

    if (filters.featured) query = query.eq('featured', true)
    if (filters.locationSlug) query = query.eq('locations.slug', filters.locationSlug)
    if (filters.city) query = query.ilike('city', filters.city)
    if (filters.search?.trim()) {
      const term = filters.search.trim().replace(/[%_,()]/g, '')
      query = query.or(`name.ilike.%${term}%,location_name.ilike.%${term}%,city.ilike.%${term}%,state.ilike.%${term}%`)
    }

    const { data, error } = await query
    if (error) throw error
    return (data || []) as unknown as Property[]
  }

  async function getBySlug(slug: string) {
    const { data, error } = await useSupabase()
      .from('properties')
      .select(propertySelect)
      .eq('slug', slug)
      .eq('is_active', true)
      .eq('published', true)
      .maybeSingle()
    if (error) throw error
    return data as unknown as Property | null
  }

  return { list, getBySlug }
}
