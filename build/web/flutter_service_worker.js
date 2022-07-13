'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "96d9869dfc9d531d446c745f28f9fa7b",
"index.html": "b919b78457bb8e4ad80b79f605f9d2ca",
"/": "b919b78457bb8e4ad80b79f605f9d2ca",
"main.dart.js": "6d9a0eb8671009ad6e44f09a96e3efd4",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "924c687d9e4f89b28ae13c048e9aa93a",
"assets/AssetManifest.json": "e20b2d12b9fb2fbfc4d91f5c55383714",
"assets/NOTICES": "fad88ce28ecb3edda6b6bd41ccfe69c6",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/assets/proyecto_1.png": "2dfa7a6670f2ac14383b32506c016f1d",
"assets/assets/logo-js.png": "c7140ae897077ae303aa769001cd0619",
"assets/assets/proyecto_3.png": "491c714158ab463c0bae2841b0a3a8ce",
"assets/assets/proyecto_10.png": "6d423e026b6f76e2ad41831743835534",
"assets/assets/proyecto_2.png": "5a8799eb50436cc5d74c7be9bccf5faa",
"assets/assets/proyecto_6.png": "2a8e9be3aaabcd6419adcd9b52c8f3ff",
"assets/assets/proyecto_7.png": "4950561553b07b32e3290702888d52cb",
"assets/assets/proyecto_5.png": "3ead4ac761e365cb6e0da18a4aae63cd",
"assets/assets/buenos-aires-logo.png": "26876248323bd48d0a6d9d04e1c2fe17",
"assets/assets/logo-vue.png": "36e272232ff2f8fbbc8c7e4b3a674a61",
"assets/assets/proyecto_4.png": "4b2b87ac4cbea04e07f70d1b8491984a",
"assets/assets/logo-mongodb.png": "2d2b10838ac9b36f3c81949000a7649d",
"assets/assets/logo-linkedin.png": "d492efc706db983e74258dbd348f2208",
"assets/assets/logo-flask.png": "12de440d3fd6af75e251f9dc121cc7c9",
"assets/assets/colombia-logo.jpeg": "1b9688f01ba595d351e83669edc77157",
"assets/assets/ba-logo.jpeg": "e472a95e0ba3bacf20cbd0100a8be26d",
"assets/assets/logo-django.png": "f246d8d1828f46beedddbeb80b8cb177",
"assets/assets/foto_perfil.jpg": "3660971d98ede708d9d24421517f1b26",
"assets/assets/logo-php.png": "ebc6430229e67b3f6aa1ec53c9280b62",
"assets/assets/binit-logo.jpeg": "3b3a4611bd20e8695dcc7feb23cfc14d",
"assets/assets/logo-css.png": "707e1342a3c3d3aa0a246bde9595efe6",
"assets/assets/logo-flutter.png": "646231c7b3e14f0959ac43175dfcf994",
"assets/assets/logo-html.png": "64ba6d76997bc51a792f321deda40db4",
"assets/assets/logo-c++.png": "a15ba0c670a57fd09076b7cfde43615e",
"assets/assets/logo-playstore.png": "d97980b307d1fbc221f72db47275dcd4",
"assets/assets/logo-firebase.png": "0e4792f1b38576bce30728eec593a301",
"assets/assets/codo-a-codo.pdf": "fa895268b00165d304c60b8e7ac9dea2",
"assets/assets/logo-oracle.png": "85726bd66f407de4d40c0fef96ee6001",
"assets/assets/logo-github.png": "ec3a60c8c6539a07eb70b52f6737ea6e",
"assets/assets/logo-python.png": "875d547546c810dc4b75ded02191c70e",
"assets/assets/proyecto_9.png": "23fef44b17e992fd91ea5b85da359cd4",
"assets/assets/logo-dart.png": "0a4777b993a114d9b9870727398bcac6",
"assets/assets/proyecto_8.png": "de9c1865de2bc569d7f440432bb0f455",
"assets/assets/telecentro-logo.png": "e000db24b5be14a91c346302e1944ec9",
"assets/assets/imagen_fondo_portfolio.png": "a25f4a7714ff7df4302389a69a208138",
"assets/assets/logo-postgresql.png": "ae153cdcc837019ab460ab844301d138"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value + '?revision=' + RESOURCES[value], {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
