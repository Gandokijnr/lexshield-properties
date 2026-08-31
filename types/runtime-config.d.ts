declare module '#app' {
  interface RuntimeConfig {
    public: {
      siteUrl: string
      companyVideoUrl: string
      supabaseUrl: string
      supabaseAnonKey: string
      whatsappNumber: string
      phoneNumber: string
      email: string
      gaId: string
    }
  }
}

export {}
