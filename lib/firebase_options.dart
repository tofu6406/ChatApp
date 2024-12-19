// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for android - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBobYpmx_s5K3WSsj6q6ufgr_P6Uyd-Jjs',
    appId: '1:773558789242:web:17c34a4e7e144ef15787c3',
    messagingSenderId: '773558789242',
    projectId: 'chatapp20241206',
    authDomain: 'chatapp20241206.firebaseapp.com',
    storageBucket: 'chatapp20241206.firebasestorage.app',
    measurementId: 'G-JZS9FPM809',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBoUcUm-wGTAzp1ikZwqyOl1qi655UygEk',
    appId: '1:773558789242:ios:ee2c831da37d1ad65787c3',
    messagingSenderId: '773558789242',
    projectId: 'chatapp20241206',
    storageBucket: 'chatapp20241206.firebasestorage.app',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBoUcUm-wGTAzp1ikZwqyOl1qi655UygEk',
    appId: '1:773558789242:ios:ee2c831da37d1ad65787c3',
    messagingSenderId: '773558789242',
    projectId: 'chatapp20241206',
    storageBucket: 'chatapp20241206.firebasestorage.app',
    iosBundleId: 'com.example.flutterApplication1',
  );
}
