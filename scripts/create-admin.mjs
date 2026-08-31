import { createClient } from '@supabase/supabase-js'
import { readFile } from 'node:fs/promises'

async function loadEnvFile() {
  try {
    const contents = await readFile(new URL('../.env', import.meta.url), 'utf8')
    for (const line of contents.split(/\r?\n/)) {
      const match = line.match(/^\s*([^#=\s]+)\s*=\s*(.*)\s*$/)
      if (!match || process.env[match[1]]) continue
      process.env[match[1]] = match[2].replace(/^(['"])(.*)\1$/, '$2')
    }
  } catch (error) {
    if (error?.code !== 'ENOENT') throw error
  }
}

await loadEnvFile()

const supabaseUrl = process.env.SUPABASE_URL || process.env.VITE_SUPABASE_URL
const serviceRoleKey = process.env.SUPABASE_SERVICE_ROLE_KEY
const email = process.env.ADMIN_EMAIL
const password = process.env.ADMIN_PASSWORD

const missing = [
  !supabaseUrl && 'SUPABASE_URL (or VITE_SUPABASE_URL)',
  !serviceRoleKey && 'SUPABASE_SERVICE_ROLE_KEY',
  !email && 'ADMIN_EMAIL',
  !password && 'ADMIN_PASSWORD',
].filter(Boolean)

if (missing.length) {
  console.error(`Missing required environment variables: ${missing.join(', ')}`)
  process.exit(1)
}

if (password.length < 8) {
  console.error('ADMIN_PASSWORD must contain at least 8 characters.')
  process.exit(1)
}

const supabase = createClient(supabaseUrl, serviceRoleKey, {
  auth: { autoRefreshToken: false, persistSession: false },
})

const { data, error } = await supabase.auth.admin.createUser({
  email,
  password,
  email_confirm: true,
  app_metadata: { role: 'admin' },
})

if (error) {
  if (/already (been )?registered|already exists/i.test(error.message)) {
    console.error(`An Auth user already exists for ${email}. No changes were made.`)
  } else {
    console.error(`Could not create admin: ${error.message}`)
  }
  process.exit(1)
}

console.log(`Created confirmed admin user ${data.user.email} (${data.user.id}).`)
