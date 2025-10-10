import { defineConfig } from 'vite'
import { svelte } from '@sveltejs/vite-plugin-svelte'

export default defineConfig(({ mode }) => ({
  plugins: [svelte({
    compilerOptions: {
      runes: true
    }
  })],
  base: mode === 'production' ? '/consult' : ''
}))
