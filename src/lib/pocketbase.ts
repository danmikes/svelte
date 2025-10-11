import PocketBase from 'pocketbase';

export const pb = new PocketBase(
  import.meta.env.PROD
    ? 'https://svelte-pb.onrender.com'
    : 'http://127.0.0.1:8090'
);
