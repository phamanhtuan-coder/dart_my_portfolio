'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "8439beb8b1732c0a2985d22d90c57484",
".git/config": "02a41a3fea3812721258397c67a0c4bd",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "5ab7a4355e4c959b0c5c008f202f51ec",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "5029bfab85b1c39281aa9697379ea444",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/sendemail-validate.sample": "4d67df3a8d5c98cb8565c07e42be0b04",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "1ca24422a5642771f38a6b0e40c3cf2b",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "a89a89f8e02b2afc434cbe5afd8eeb71",
".git/logs/refs/heads/gh-pages": "b16d5b47e24d945b7c39010d2a5d2be4",
".git/logs/refs/heads/main": "9d4770a21666c15ddd7212413748f50b",
".git/objects/02/d773fba1a7a678e7b95746147668b1e54ede3b": "9034ec9e183491bf6553f1ae096634d7",
".git/objects/06/ca3fb72c491a46bd5240c57e7f6901441b37b8": "75079568a645c3b9e691aab179db8d96",
".git/objects/07/6945f42efdde92e1ffc1a7f9773ac2b9b3e75a": "07849ad0604a63e35c7173355f95f4f6",
".git/objects/08/32d0db2def1613c1c45aa4fe9156a1c6b7d589": "e05df183e5eeaddf39672a2516f9c41d",
".git/objects/09/12c2803aaf00bc8e6c1b3f3d9cfaaedea386bd": "13a4e90145ca2d2a1436385871b81c16",
".git/objects/0c/bd83539712d57adeec18e66237269f0f892436": "971d0e4ce54c9ed918909f36c90fd881",
".git/objects/17/e94db3f9689604688c4765ab2dc54281141ec3": "ea05cef88b089f3939ce467c173933b1",
".git/objects/1f/45b5bcaac804825befd9117111e700e8fcb782": "7a9d811fd6ce7c7455466153561fb479",
".git/objects/20/9d0b3751b5ef3c9a35f61c32a7ea61a45f64af": "784ae755a62f12a0cd9dcf71396ea9c2",
".git/objects/25/8b3eee70f98b2ece403869d9fe41ff8d32b7e1": "05e38b9242f2ece7b4208c191bc7b258",
".git/objects/2c/c5c25f5ac90effb8988a7973b581b4854cd641": "bb3248a0c7988fdfefe87e96c3e55f3b",
".git/objects/32/aa3cae58a7432051fc105cc91fca4d95d1d011": "4f8558ca16d04c4f28116d3292ae263d",
".git/objects/35/7edc112da89ec7218034414bd4f114e6487ebe": "969fd1671dfc7ec203d8addda0e0763d",
".git/objects/37/182a65d2f0a09a2f8a851adf8669e339da764b": "e1d0df161bf002c2180f641ca1398b0d",
".git/objects/3a/7525f2996a1138fe67d2a0904bf5d214bfd22c": "ab6f2f6356cba61e57d5c10c2e18739d",
".git/objects/40/0d5b186c9951e294699e64671b9dde52c6f6a0": "f6bd3c7f9b239e8898bace6f9a7446b9",
".git/objects/41/56cdf4c52e87887e617e38cf1b47a473d67fd7": "a8a9ba93a29d2e4c7b0258eb54fb9ba5",
".git/objects/42/83872c2e44082b6e73a1cf57335f4380a6cb1d": "3f31eee22396f4303104c1acab7a0dc4",
".git/objects/43/bd64ab198540a5244e4ce86a5381fa44abbe2b": "8645b1c9c962ec946533fc244630acd6",
".git/objects/44/a8b8e41b111fcf913a963e318b98e7f6976886": "5014fdb68f6b941b7c134a717a3a2bc6",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/49/b531e6e484fa1ba45d695dde0ea179785ac2da": "194d9ead25fb727a6fd7a0871ce0ae78",
".git/objects/4a/22fd4444ffa3a8633664f9b2b6716bcdbcf3d8": "edfe2d2d174f5366131b6345b6f1a06e",
".git/objects/4a/af005c6ade1917da49beefa585eb890180e865": "45e9505ad63dd4121a9f96ff9ebd2fef",
".git/objects/4e/b27180e9011dbb20cc02d5f45dca5661955437": "c7a4dce219bf5d5e669197c514f8acd5",
".git/objects/52/896f461139823daf687cc35421b4042e303fbc": "63a42eee682858c78a1735754a5479b4",
".git/objects/58/f7c6e6e098a1598a89b94a1aae321ec855e3a0": "b527b4ade3b444741e493308c5bca9e2",
".git/objects/62/5146b586a5a53a4dc3f871bf114b999a7c2069": "c61a1810c35cba16c956366720b60832",
".git/objects/69/586507a4a188f7b9eddc8c1a6885d6a5209bfc": "54b7cdb90d936bc323af8f5acfe0029f",
".git/objects/6b/e909fbf40b23748412f0ea89bf0fae827ed976": "5f118419157d9534688915220cc803f7",
".git/objects/84/0516208d35dcb4298847ab835e2ef84ada92fa": "36a4a870d8d9c1c623d8e1be329049da",
".git/objects/85/6a39233232244ba2497a38bdd13b2f0db12c82": "eef4643a9711cce94f555ae60fecd388",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/90/bcfcf0a77ab618a826db0fd8b0942963b653af": "fc109675cdf1233dd6599a4c3c0a7a69",
".git/objects/92/98cd758fb55f144aae7999a2ba60a5f4fd69ba": "cb66ea464083619041e6cc95897aa3af",
".git/objects/93/136c468ff3fb0a6833f1fdcfbed98f344d705c": "4aba54434678f6fc058fd2603dad9011",
".git/objects/93/25da43c17bcf2ee4a324513526099353b52d12": "9331cf86b846d455fa15bf5c5e5a7519",
".git/objects/97/ffe443e581b1f106f744840e55282dd97076c7": "7875e2b2c7307ce5e71bf658b1228bfc",
".git/objects/98/57c9b3b0448c92818efc5fda0f206b21914168": "ecbde07c564dabbec0f249821051b8af",
".git/objects/9b/1b1cae558db2c2a1bfea5dc2ac544fc224efc4": "1168b8a9d70533135c4b3bc6853e85cc",
".git/objects/a7/bbec11ba4367b5b27c5cc054f9e07151724543": "1645424297e2d92ad179dce2ece269af",
".git/objects/ad/b16f2076300273114c7990af4f8effb93dbbc1": "0cc8fe3b8bdf4481f49b19af880bfdc6",
".git/objects/b0/fc4d6484460939b82bf0722e3b0886c368cc31": "1d92e8db378f7940533fc78a1fb0cef5",
".git/objects/b1/5ad935a6a00c2433c7fadad53602c1d0324365": "8f96f41fe1f2721c9e97d75caa004410",
".git/objects/b7/23c6fb529daab72e600238772a8ea704de242f": "4676b757f2311506ab6024c2f8d3ea55",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/ba/5317db6066f0f7cfe94eec93dc654820ce848c": "9b7629bf1180798cf66df4142eb19a4e",
".git/objects/c2/61e260b90d6f9a08eb267ca810e0c9319476c1": "a5d14029d3d25805d7495cf5f5e00d47",
".git/objects/cf/577c8ff31d48f5f38bbe1f8a74ba835df2ac28": "1c2a7b47588b0e42b36e1ad6673cf06b",
".git/objects/cf/8048efd72f59b5d57912461c4e15283519f87c": "179313c47947666eb66252f5e5a8e0f6",
".git/objects/d0/23371979cf1e985205df19078051c10de0a82d": "700b71074bad7afee32068791dec7442",
".git/objects/d0/7c5694ebfd0872f27665c7e0a8a14ab3e9b7b3": "26c1fe8c0537b14f79686a7331df1caa",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/d5/bb50b3c3bc534b51ba035a5e8495ba7af5025b": "81d30e6f235d2cd1960b1a0d917b3043",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/da/fd65422747502c19b5c74b4230282644d2169c": "d8a62caf99a372ff6c7692e143787ce3",
".git/objects/e1/7fa7161dd9e983891f39f28f1a76050bea5d26": "86aae33277baf080d9163423bd7e96aa",
".git/objects/e4/d8d078bf413815d133a140ee253ff970abd1bc": "3f37990a2854a64118034149df89f9e3",
".git/objects/e5/9c634045ea6dc21e746a5268829731ea41106b": "bf389b57aeffbe6b39ef9705e5e3aad3",
".git/objects/e7/73eb18cc94defbbc2a620d0741250ee186e9ba": "25ce409c1e7db6dd0ad339b1b7319844",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/f7/7b018c6202acf1b6e6c0664918f05976a552dc": "11ce34c4c7b870b1924b279afad85779",
".git/objects/fe/8a914efa708331ef207b55bf680c8b478266ae": "51f41379c0a04d97cad5266329dbf69a",
".git/refs/heads/gh-pages": "2e4d03ad972d4f57afe5dc58e431ba38",
".git/refs/heads/main": "2e4d03ad972d4f57afe5dc58e431ba38",
"assets/AssetManifest.bin": "d7c2fe7765c993e535ae1f38bae64f72",
"assets/AssetManifest.bin.json": "2137d78dd268ab8805fe5ff923eb6fbc",
"assets/AssetManifest.json": "a1e64eea7110ef3d39019502954dd705",
"assets/assets/android_dev_icon.png": "7506170da07052ef58c7ec066bfd0d74",
"assets/assets/arduino_icon.png": "356956398574b4efac080bfddaa8ced5",
"assets/assets/cpp_icon.png": "cf40400edaeec3b45c55ab508cfccdda",
"assets/assets/csharp_icon.png": "bc0b857250f8278b09af5c8faa995443",
"assets/assets/css_icon.png": "a747b5745b1752532080bf812142d4f7",
"assets/assets/desktop_icon.png": "bc01bb55df6ad680c8c52240747eb745",
"assets/assets/firebase_icon.png": "b7e1df99117f88306763ee787d7ea00d",
"assets/assets/flutter_icon.png": "4c8bcde028436fb7b36c5582af8b5cfb",
"assets/assets/Hero_NoBG.png": "51400c73f3f48bccb4299fade596e835",
"assets/assets/html_icon.png": "867dcb9e1fb7990bf24a91b3e97062cf",
"assets/assets/ICON.png": "e906c3f938fff1c60ea3da8775d438de",
"assets/assets/integrated_system_icon.png": "409ed86f51c1d4adfe1285f36fcfe30b",
"assets/assets/java_icon.png": "7f1ac3bb4b061fcd4131c95a4a326908",
"assets/assets/java_script_icon.png": "b7edb700216f0173d90df7b4659bdd94",
"assets/assets/kotlin_icon.png": "8b1f693a51244117c1045af7e730fa85",
"assets/assets/mysql_icon.png": "c34a4cf6529588122560300914afb18b",
"assets/assets/nodejs_icon.png": "b8ef9d4e35fc798531372000f3e94349",
"assets/assets/python_icon.png": "c64cae3355a3419b21d9deed16db1be2",
"assets/assets/web_dev_icon.png": "3458217082ecd5edb28a86a0a341c049",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "96f798e5c89d52dc5bb68941bad444fb",
"assets/NOTICES": "7a1f472d38cdb4e55ea00cafcf535db9",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"flutter_bootstrap.js": "b550ce23d0ad37faffd79afe9da008fd",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "e3b725901da55b507431a0817400bb1e",
"/": "e3b725901da55b507431a0817400bb1e",
"main.dart.js": "b761fcb4bea5828858d5359096dd3b38",
"manifest.json": "c7af29c2ad5bddf4be5846bf35453144",
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
