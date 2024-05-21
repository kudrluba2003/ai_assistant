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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBTm1Bdlixm_UX7NIwkN43gmSWLS4u9Syg',
    appId: '1:893186781091:web:42315d53ffcdc98af93416',
    messagingSenderId: '893186781091',
    projectId: 'aihse2024',
    authDomain: 'aihse2024.firebaseapp.com',
    storageBucket: 'aihse2024.appspot.com',
    measurementId: 'G-68WN0S6F1F',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBTRe11Q3sMUwYHnzG5jbAWzVDv6HGvbZY',
    appId: '1:893186781091:ios:7464a580a778a289f93416',
    messagingSenderId: '893186781091',
    projectId: 'aihse2024',
    storageBucket: 'aihse2024.appspot.com',
    iosBundleId: 'com.example.aiAssistant',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: "AIzaSyBKo1bBYdc3cgxy1c4mf3WwFLrKNY6PTDM",
    appId: "1:893186781091:android:9404156c24c4f0b1f93416",
    projectId: 'aihse2024',
    messagingSenderId: '893186781091',
    storageBucket: 'aihse2024.appspot.com',
    androidClientId: "893186781091-r213bfsqfs52dqnqb5vedcfhutpuplnt.apps.googleusercontent.com",
  );

}
