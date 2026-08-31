export function usePhone() {
  const config = useRuntimeConfig()
  const number = computed(() => config.public.phoneNumber as string)

  function buildTelLink(): string {
    return `tel:${number.value.replace(/\s/g, '')}`
  }

  return {
    number,
    buildTelLink,
  }
}
