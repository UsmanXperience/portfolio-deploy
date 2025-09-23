'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "1eb681836a8710ec22437086faa51920",
"assets/AssetManifest.bin.json": "d7495995f2288cb5e73d3b8fb683ffe5",
"assets/AssetManifest.json": "9ccbb5c4a79e715efa6f6e3be65d67cd",
"assets/assets/android_icon.png": "32d216e6912e028ace380094df9d51ff",
"assets/assets/android_iconn.png": "32d216e6912e028ace380094df9d51ff",
"assets/assets/android_studio.png": "60cd295b1b8759a0558bd48c83d648af",
"assets/assets/cpp.png": "0b849c72f38362fe12072a4916660013",
"assets/assets/css3.png": "b1bd0673d70ccee89e1457bd71554759",
"assets/assets/dart.png": "1a089616e2be1ac7c5188c00225772c8",
"assets/assets/desktop_icon.png": "e0e90a080a776fd1da23f5a249b5ce3c",
"assets/assets/docker.png": "722cafb6c71b44bba6292a603b2e198c",
"assets/assets/facebook.png": "fa74fe1619d75d68df1f0db7c654e39a",
"assets/assets/figma.png": "48b9fada680fedaad9ca4f860cfe3b93",
"assets/assets/flutter.png": "abe34b0551ded954f6759cada7807e3e",
"assets/assets/git.png": "81af22be332be78fbe844d532433de7d",
"assets/assets/github.png": "7aed3646cbea181a3da85620809e992c",
"assets/assets/html5.png": "9d5b22bfe74ac513d5cd33563908ae71",
"assets/assets/hugo.png": "6c341d7823570ab705c940f1dea993ef",
"assets/assets/instagram.png": "02c7721e097a6bb001d00fa61750bc81",
"assets/assets/ios_icon.png": "4b8039e8a442657c7b9b379322eb2793",
"assets/assets/javascript.png": "ab8e2beca091db2345ff66a5cc432985",
"assets/assets/linkedin.png": "e4d142586676a80b3927d899d3584148",
"assets/assets/mypic.jpg": "f3329ff7f6a7c26f4119811f1e3ad00a",
"assets/assets/my_flutter_avatar.png": "a6fc0bb5fb8f7c50d06b283332eaa57c",
"assets/assets/node.js.png": "8056298728c250df8209c685e9f69eaf",
"assets/assets/postman.png": "5972522c58523d1ac196ae2edc797d68",
"assets/assets/Project1.png": "7c6e012450b81c45e9a537001f4a809f",
"assets/assets/project2.png": "3db0d171ebbe31f5d95817d4c65a3e0a",
"assets/assets/project3.png": "16b078bb72aa052a96c4fbbf7249e926",
"assets/assets/projects/02.png": "cf8468132005ef5442c5857705e39c40",
"assets/assets/projects/03.png": "9dd85f5710c01486dc5937733a22d9eb",
"assets/assets/projects/04.png": "8e2a233d5e7b9930407e3cccf54b6799",
"assets/assets/projects/05.png": "e2cc840dbaaf91e6acba1d9d44ae502f",
"assets/assets/projects/06.png": "11a36375edc4b5ba6956bdeed286f733",
"assets/assets/projects/1.png": "1f59be4af5fe374b4e3f5f6afdb3a24c",
"assets/assets/projects/mypic.jpg": "f3329ff7f6a7c26f4119811f1e3ad00a",
"assets/assets/projects/w01.png": "b1256ae160f9170ab36ce78ee7a4dc2d",
"assets/assets/projects/w02.png": "f3168876c62cbf02cb9ff94640383f96",
"assets/assets/projects/w03.jpeg": "81f24b685fd3f214e409fd29217c1235",
"assets/assets/promptt.png": "f615ea7bf529b637347f3a219d1d6117",
"assets/assets/python.png": "e04382338533c6bb0dcfc7a48bf86502",
"assets/assets/telegram.png": "d940cd7b5e7b66510b59785177c6414f",
"assets/assets/vscode.png": "915f1febee00b50adc1c540ca6f0d1f3",
"assets/assets/wattsapp.png": "1a32630a99163b019019da41d54307d4",
"assets/assets/web_icon.png": "8867144689b70d099377ee3c4ab1baa0",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "25698d5bfdc26bc7b72b33aff55757c5",
"assets/NOTICES": "765cebadd1c4b14237c736c0b8252f39",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "140ccb7d34d0a55065fbd422b843add6",
"canvaskit/canvaskit.js.symbols": "58832fbed59e00d2190aa295c4d70360",
"canvaskit/canvaskit.wasm": "07b9f5853202304d3b0749d9306573cc",
"canvaskit/chromium/canvaskit.js": "5e27aae346eee469027c80af0751d53d",
"canvaskit/chromium/canvaskit.js.symbols": "193deaca1a1424049326d4a91ad1d88d",
"canvaskit/chromium/canvaskit.wasm": "24c77e750a7fa6d474198905249ff506",
"canvaskit/skwasm.js": "1ef3ea3a0fec4569e5d531da25f34095",
"canvaskit/skwasm.js.symbols": "0088242d10d7e7d6d2649d1fe1bda7c1",
"canvaskit/skwasm.wasm": "264db41426307cfc7fa44b95a7772109",
"canvaskit/skwasm_heavy.js": "413f5b2b2d9345f37de148e2544f584f",
"canvaskit/skwasm_heavy.js.symbols": "3c01ec03b5de6d62c34e17014d1decd3",
"canvaskit/skwasm_heavy.wasm": "8034ad26ba2485dab2fd49bdd786837b",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "888483df48293866f9f41d3d9274a779",
"flutter_bootstrap.js": "dcfbafa4d699215b5b15b606975dc3d7",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "bf1e45747974a42ebcf850f57cc46223",
"/": "bf1e45747974a42ebcf850f57cc46223",
"main.dart.js": "c493dacdd98c3e213ded0adc216f4ea1",
"manifest.json": "d8fe34f7ae4c072a77b924e01dac8a50",
"version.json": "9b818ca9511483c901bed1545384376c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
