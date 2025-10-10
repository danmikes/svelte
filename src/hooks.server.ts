import type { Handle } from '@sveltejs/kit';
import { pb } from '$lib/pocketbase';

export const handle: Handle = async ({ event, resolve }) => {
  pb.authStore.loadFromCookie(event.request.headers.get('cookie') || '');

  try {
    if (pb.authStore.isValid) {
      await pb.collection('users').authRefresh();
    }
  } catch {
    pb.authStore.clear();
  }

  event.locals.pb = pb;
  event.locals.user = pb.authStore.record;

  const response = await resolve(event);

  response.headers.set('set-cookie', pb.authStore.exportToCookie({ secure: false }));

  return response;
};
