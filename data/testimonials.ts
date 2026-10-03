export interface VideoTestimonial {
  title: string
  videoUrl: string
  description?: string
}

// Add customer testimonial videos here. videoUrl accepts a YouTube URL
// or the complete iframe embed code supplied by YouTube. No database needed.
export const videoTestimonials: VideoTestimonial[] = []
