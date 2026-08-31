export function formatNaira(amount: number | null): string {
  if (!amount) return 'Price on request'
  return '₦' + amount.toLocaleString('en-NG')
}

export function statusBadge(status: string): { class: string; label: string } {
  switch (status) {
    case 'available':
      return { class: 'badge-success', label: 'Available' }
    case 'selling_fast':
      return { class: 'badge-warning', label: 'Selling Fast' }
    case 'limited':
      return { class: 'badge-error', label: 'Limited Plots' }
    case 'new':
      return { class: 'badge-primary', label: 'New Listing' }
    case 'sold_out':
      return { class: 'badge bg-neutral-200 text-neutral-600', label: 'Sold Out' }
    default:
      return { class: 'badge-primary', label: status }
  }
}

export function formatDate(date: string | null): string {
  if (!date) return ''
  return new Date(date).toLocaleDateString('en-GB', {
    day: 'numeric',
    month: 'short',
    year: 'numeric',
  })
}

export function slugify(text: string): string {
  return text
    .toLowerCase()
    .trim()
    .replace(/[^a-z0-9\s-]/g, '')
    .replace(/\s+/g, '-')
    .replace(/-+/g, '-')
}
