// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
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
    apiKey: 'AIzaSyA7xdFBMZHB7sND4ZyaY4voHuACmF9YUp0',
    appId: '1:844595681267:web:953901682f6e0a00212486',
    messagingSenderId: '844595681267',
    projectId: 'alert-32409',
    authDomain: 'alert-32409.firebaseapp.com',
    storageBucket: 'alert-32409.appspot.com',
    measurementId: 'G-2T74MDTDCP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAZn4czshVQhFR-TJ_tYEtnaSfn0CFdMK8',
    appId: '1:844595681267:android:369b3e507e621ce7212486',
    messagingSenderId: '844595681267',
    projectId: 'alert-32409',
    storageBucket: 'alert-32409.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBqPQsO7ptXKSRpXH7l979AILFSfcb-7Cw',
    appId: '1:844595681267:ios:8ed4647d9c61c03c212486',
    messagingSenderId: '844595681267',
    projectId: 'alert-32409',
    storageBucket: 'alert-32409.appspot.com',
    iosClientId: '844595681267-gd937nugl1pq4dcjt44nnp9rhincl42k.apps.googleusercontent.com',
    iosBundleId: 'com.example.auth',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBqPQsO7ptXKSRpXH7l979AILFSfcb-7Cw',
    appId: '1:844595681267:ios:8ed4647d9c61c03c212486',
    messagingSenderId: '844595681267',
    projectId: 'alert-32409',
    storageBucket: 'alert-32409.appspot.com',
    iosClientId: '844595681267-gd937nugl1pq4dcjt44nnp9rhincl42k.apps.googleusercontent.com',
    iosBundleId: 'com.example.auth',
  );
}
