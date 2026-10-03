interface ClientExport {
  name: string
  email: string | null
  property_name: string | null
  phone: string
  message: string | null
}

function cell(value: string | null): string {
  let text = value || ''
  // Keep spreadsheet applications from executing client-supplied formulas.
  if (/^[\s]*[=+@-]/.test(text) || /^[\t\r\n]/.test(text)) text = `'${text}`
  return `"${text.replace(/"/g, '""')}"`
}

export function clientCsv(clients: ClientExport[]): string {
  const rows = [
    ['Name', 'Email', 'Estate', 'Phone Number', 'Clients Message'].map(cell).join(','),
    ...clients.map(client => [client.name, client.email, client.property_name, client.phone, client.message].map(cell).join(',')),
  ]
  return '\uFEFF' + rows.join('\r\n') + '\r\n'
}
