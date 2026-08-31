import { createClient, type SupabaseClient } from '@supabase/supabase-js'

let client: SupabaseClient | null = null

export function useSupabase(): SupabaseClient {
  if (client) return client

  const config = useRuntimeConfig()
  const url = config.public.supabaseUrl
  const key = config.public.supabaseAnonKey

  if (!url || !key) {
    throw new Error('Supabase URL or anon key is not configured')
  }

  client = createClient(url, key, {
    auth: {
      persistSession: true,
      autoRefreshToken: true,
    },
  })

  return client
}
