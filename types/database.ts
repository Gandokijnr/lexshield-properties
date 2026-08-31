export interface Location {
  id: string
  name: string
  slug: string
  state: string
  short_description: string
  description: string | null
  meta_title: string | null
  meta_description: string | null
  og_image: string | null
  landmarks: string[] | null
  faq: FaqItem[]
  sort_order: number
  is_active: boolean
  created_at: string
  updated_at: string
}

export interface PlotSize {
  label: string
  price: number
}

export interface PaymentPlan {
  label: string
  description: string
}

export interface PropertyDocument {
  type: string
  status: string
}

export interface Property {
  id: string
  name: string
  slug: string
  location_id: string | null
  location_name: string
  state: string
  property_type: string
  status: string
  featured: boolean
  featured_image: string | null
  gallery: string[]
  videos: string[]
  price_from: number | null
  price_display: string | null
  previous_price: number | null
  currency: string
  plot_sizes: PlotSize[]
  payment_plans: PaymentPlan[]
  documentation: PropertyDocument[]
  landmarks: string[]
  features: string[] | null
  description: string | null
  overview: string | null
  development_status: string | null
  coordinates: { lat?: number; lng?: number } | null
  brochure_url: string | null
  meta_title: string | null
  meta_description: string | null
  og_image: string | null
  canonical_url: string | null
  noindex: boolean
  sort_order: number
  is_active: boolean
  created_at: string
  updated_at: string
  city: string | null
  country: string
  estate_type: string | null
  developer: string | null
  initial_deposit: number | null
  sales_status: string | null
  price_inclusive: boolean
  price_inclusive_text: string | null
  published: boolean
  property_plot_options?: PropertyPlotOption[]
  property_images?: PropertyImage[]
  property_statutory_fees?: PropertyStatutoryFee[]
  property_amenities?: PropertyAmenity[]
  last_price_verified_at: string | null
  pricing_model: 'all_inclusive' | 'plus_statutory_fees' | 'contact_for_price'
}

export interface PropertyStatutoryFee { id:string; property_id:string; label:string; duration_months:number|null; amount:number; sort_order:number }
export interface PropertyAmenity { id:string; property_id:string; name:string; development_status:'advertised'|'planned'|'under_development'|'completed'|'operational'; sort_order:number }

export interface PropertyPaymentPlan {
  id: string
  plot_option_id: string
  label: string
  duration_months: number | null
  price: number
  sort_order: number
}

export interface PropertyPlotOption {
  id: string
  property_id: string
  label: string
  enquiry_key: string
  plot_type: string
  size_sqm: number | null
  outright_price: number
  sort_order: number
  is_active: boolean
  property_payment_plans?: PropertyPaymentPlan[]
}

export interface PropertyImage {
  id: string
  property_id: string
  image_url: string
  alt_text: string | null
  media_type: string
  is_primary: boolean
  sort_order: number
}

export interface PropertyFaq {
  id: string
  property_id: string
  question: string
  answer: string
  sort_order: number
  created_at: string
}

export interface DevelopmentUpdate {
  id: string
  property_id: string
  title: string
  description: string | null
  image_url: string | null
  update_date: string
  created_at: string
}

export interface Lead {
  id: string
  name: string
  phone: string
  email: string | null
  message: string | null
  property_id: string | null
  property_name: string | null
  property_location: string | null
  property_price: string | null
  page_url: string | null
  source: string
  utm_source: string | null
  utm_medium: string | null
  utm_campaign: string | null
  utm_content: string | null
  referrer: string | null
  status: string
  assigned_to: string | null
  notes: string | null
  created_at: string
  updated_at: string
}

export interface InspectionBooking {
  id: string
  name: string
  phone: string
  email: string | null
  property_id: string | null
  property_name: string | null
  preferred_date: string | null
  attendees: number | null
  source: string
  utm_source: string | null
  utm_medium: string | null
  utm_campaign: string | null
  status: string
  notes: string | null
  created_at: string
  updated_at: string
}

export interface Testimonial {
  id: string
  name: string
  location: string | null
  property_id: string | null
  property_name: string | null
  rating: number
  text: string
  image_url: string | null
  is_featured: boolean
  is_active: boolean
  created_at: string
}

export interface BlogCategory {
  id: string
  name: string
  slug: string
  description: string | null
  created_at: string
}

export interface BlogPost {
  id: string
  title: string
  slug: string
  excerpt: string | null
  content: string | null
  category_id: string | null
  category_name: string | null
  author: string
  featured_image: string | null
  meta_title: string | null
  meta_description: string | null
  tags: string[] | null
  published: boolean
  published_at: string | null
  sort_order: number
  created_at: string
  updated_at: string
}

export interface FaqItem {
  question: string
  answer: string
}

export interface SiteSettings {
  id: number
  company_name: string
  phone: string | null
  whatsapp: string | null
  email: string | null
  address: string | null
  office_hours: string | null
  rc_number: string | null
  social_facebook: string | null
  social_twitter: string | null
  social_instagram: string | null
  social_linkedin: string | null
  ga_id: string | null
  updated_at: string
}
