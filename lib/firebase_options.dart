import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyD5zWMeup-BiG1ljuCk9916-gkMPUJ7dEI',
    appId: '1:421090308846:web:e9342d81f3d5de3239f9ff',
    messagingSenderId: '421090308846',
    projectId: 'mobile-ef84e',
    authDomain: 'mobile-ef84e.firebaseapp.com',
    storageBucket: 'mobile-ef84e.firebasestorage.app',
    measurementId: 'G-VNMH64393F',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCll7TJbUfv3uYj9S9nwXtgf7ZGBkWqzKo',
    appId: '1:421090308846:android:6f662d48b6c7957639f9ff',
    messagingSenderId: '421090308846',
    projectId: 'mobile-ef84e',
    storageBucket: 'mobile-ef84e.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAeH1i5bSwgs1mk1MyKH07F3Lu_rN0tMOo',
    appId: '1:421090308846:ios:acd8e0b7932cf18839f9ff',
    messagingSenderId: '421090308846',
    projectId: 'mobile-ef84e',
    storageBucket: 'mobile-ef84e.firebasestorage.app',
    iosBundleId: 'com.example.firebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAeH1i5bSwgs1mk1MyKH07F3Lu_rN0tMOo',
    appId: '1:421090308846:ios:acd8e0b7932cf18839f9ff',
    messagingSenderId: '421090308846',
    projectId: 'mobile-ef84e',
    storageBucket: 'mobile-ef84e.firebasestorage.app',
    iosBundleId: 'com.example.firebase',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD5zWMeup-BiG1ljuCk9916-gkMPUJ7dEI',
    appId: '1:421090308846:web:b5ec19fcb913ddcb39f9ff',
    messagingSenderId: '421090308846',
    projectId: 'mobile-ef84e',
    authDomain: 'mobile-ef84e.firebaseapp.com',
    storageBucket: 'mobile-ef84e.firebasestorage.app',
    measurementId: 'G-F39TFSTY64',
  );
}
