const CACHE = 'scv-v1';
const PRE = [
  './',
  './index.html',
  '../assets/identidade/temas.css',
  '../assets/kit/kit.css',
  '../assets/kit/kit.js',
];

self.addEventListener('install', e => {
  e.waitUntil(
    caches.open(CACHE).then(c => c.addAll(PRE)).then(() => self.skipWaiting())
  );
});

self.addEventListener('activate', e => {
  e.waitUntil(
    caches.keys().then(k => Promise.all(
      k.filter(v => v !== CACHE).map(v => caches.delete(v))
    )).then(() => self.clients.claim())
  );
});

self.addEventListener('fetch', e => {
  if (e.request.method !== 'GET') return;
  e.respondWith(
    caches.match(e.request).then(r => r || fetch(e.request).then(f => {
      if (f.ok) { const c = caches.open(CACHE); c.then(x => x.put(e.request, f.clone())); }
      return f;
    })).catch(() => caches.match('./index.html'))
  );
});
