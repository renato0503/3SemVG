const CACHE = 'lifepath-v1';
const ASSETS = ['./','./index.html','./app.html','./manifest.json','../assets/identidade/temas.css','../assets/kit/kit.css','../assets/kit/kit.js'];
self.addEventListener('install', e => { e.waitUntil(caches.open(CACHE).then(c => c.addAll(ASSETS)).then(() => self.skipWaiting())); });
self.addEventListener('activate', e => { e.waitUntil(caches.keys().then(k => Promise.all(k.filter(x => x !== CACHE).map(caches.delete))).then(() => self.clients.claim())); });
self.addEventListener('fetch', e => { if (e.request.method !== 'GET') return; e.respondWith(caches.match(e.request).then(c => c || fetch(e.request).then(r => { if (!r || r.status !== 200) return r; const cl = r.clone(); caches.open(CACHE).then(c => c.put(e.request, cl)); return r; })).catch(() => caches.match('./index.html'))); });
