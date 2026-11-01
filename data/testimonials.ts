export interface VideoTestimonial {
  title: string
  videoUrl: string
  description?: string
}

// Add customer testimonial videos here. videoUrl accepts a YouTube URL
// or the complete iframe embed code supplied by YouTube. No database needed.
export const videoTestimonials: VideoTestimonial[] = [
  {
    title: 'Lexshield Properties Limited TURNS dreams to reality',
    videoUrl: 'https://www.youtube.com/embed/DcTAie7YKH4',
    description: 'Discover how Lexshield Properties helps turn property dreams into reality.',
  },
  {
    title: 'LEXSHIELD PROPERTIES LIMITED TESTIMONIALS',
    videoUrl: 'https://www.youtube.com/embed/R-VMx24fpHc',
    description: 'Discover how Lexshield Properties helps turn property dreams into reality.',
  },
]

// Add estate tour and promotional videos here using a YouTube URL or iframe embed code.
export const promotionalVideos: VideoTestimonial[] = [
  {
    title: 'Emirate Parks and Garden is the Real Deal',
    videoUrl: 'https://www.youtube.com/embed/8pYdoXpgf1M',
    description: 'Explore properties in Ogun and Lagos State at Emirate Parks and Garden.',
  },
  {
    title: 'Emirates Parks and Garden, Mowe-Ofada, Will Make You Rethink Real Estate in Nigeria 🇳🇬',
    videoUrl: 'https://www.youtube.com/embed/u13tsQdhFik',
  },
]
