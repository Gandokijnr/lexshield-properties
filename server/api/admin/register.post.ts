import { createClient } from '@supabase/supabase-js'
import { timingSafeEqual } from 'node:crypto'

type RegisterAdminBody = {
  email?: string
  password?: string
  setupToken?: string
}

export default defineEventHandler(async (event) => {
  const config = useRuntimeConfig(event)
  const body = await readBody<RegisterAdminBody>(event)
  const email = String(body.email || '').trim().toLowerCase()
  const password = String(body.password || '')
  const setupToken = String(body.setupToken || '')

  if (!config.adminSetupToken || !config.supabaseServiceRoleKey || !config.public.supabaseUrl) {
    throw createError({ statusCode: 503, statusMessage: 'Admin registration is not configured.' })
  }

  if (setupToken.length !== config.adminSetupToken.length
    || !timingSafeEqual(Buffer.from(setupToken), Buffer.from(config.adminSetupToken))) {
    throw createError({ statusCode: 403, statusMessage: 'Invalid setup token.' })
  }

  if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
    throw createError({ statusCode: 400, statusMessage: 'Enter a valid email address.' })
  }

  if (password.length < 8) {
    throw createError({ statusCode: 400, statusMessage: 'Password must contain at least 8 characters.' })
  }

  const supabase = createClient(config.public.supabaseUrl, config.supabaseServiceRoleKey, {
    auth: { autoRefreshToken: false, persistSession: false },
  })
  const { data, error } = await supabase.auth.admin.createUser({
    email,
    password,
    email_confirm: true,
    app_metadata: { role: 'admin' },
  })

  if (error) {
    const duplicate = /already (been )?registered|already exists/i.test(error.message)
    throw createError({
      statusCode: duplicate ? 409 : 400,
      statusMessage: duplicate ? 'An account already exists for this email.' : error.message,
    })
  }

  return { created: true, email: data.user.email }
})
