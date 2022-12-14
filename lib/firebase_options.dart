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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDbSNilxq3xEusPsIulPfGAd5p_Csev1mg',
    appId: '1:253809374468:web:caa6f1514267f430090c51',
    messagingSenderId: '253809374468',
    projectId: 'turistapp-0203',
    authDomain: 'turistapp-0203.firebaseapp.com',
    storageBucket: 'turistapp-0203.appspot.com',
    measurementId: 'G-N73YW3ZHKB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBxK4SglfeF8Hc-WsTvFNOKNeyB_Sct5hA',
    appId: '1:253809374468:android:bfc9bfae2beb28c4090c51',
    messagingSenderId: '253809374468',
    projectId: 'turistapp-0203',
    storageBucket: 'turistapp-0203.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDVYs1ulZ9pSmuveI8SCYBzaG1cNiVZ3tM',
    appId: '1:253809374468:ios:cd7f5a3520cd6ad5090c51',
    messagingSenderId: '253809374468',
    projectId: 'turistapp-0203',
    storageBucket: 'turistapp-0203.appspot.com',
    iosClientId: '253809374468-5v2taj99m223b5iciuctilul5fmltbim.apps.googleusercontent.com',
    iosBundleId: 'com.udea.turistapp',
  );
}
