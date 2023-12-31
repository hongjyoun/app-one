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
    apiKey: 'AIzaSyBN1cMJOvt6Ct0uCwZrADZJ9COpPsmwu70',
    appId: '1:739493055562:web:71ed303b96160808b66ab3',
    messagingSenderId: '739493055562',
    projectId: 'hongjyoun-app-one',
    authDomain: 'hongjyoun-app-one.firebaseapp.com',
    storageBucket: 'hongjyoun-app-one.appspot.com',
    measurementId: 'G-5XVWR0VDY4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCVh-GtYWUMWgqLOaG1EPpd-bhs0Mm00Es',
    appId: '1:739493055562:android:4988801de01992b4b66ab3',
    messagingSenderId: '739493055562',
    projectId: 'hongjyoun-app-one',
    storageBucket: 'hongjyoun-app-one.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCzHA1ibIbAMYOKPnAv1AyWw4enzlFGcZo',
    appId: '1:739493055562:ios:e21d53152911ba09b66ab3',
    messagingSenderId: '739493055562',
    projectId: 'hongjyoun-app-one',
    storageBucket: 'hongjyoun-app-one.appspot.com',
    iosBundleId: 'com.example.appOne',
  );
}
