
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;


class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
            'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
      apiKey: 'AIzaSyCQt3kKbm0vV6i-neZRKqY1xGDmYXRD6PY',
      appId: '1:1029392051297:android:7895b9cb9afa31b7bb4e20',
      messagingSenderId: '1029392051297',
      projectId: 'notipotro',
      storageBucket: 'notipotro.firebasestorage.app',
      databaseURL:
      'https://notipotro-default-rtdb.firebaseio.com/');

  static const FirebaseOptions ios = FirebaseOptions(
      apiKey: 'AIzaSyCQt3kKbm0vV6i-neZRKqY1xGDmYXRD6PY',
      appId: '1:1029392051297:android:7895b9cb9afa31b7bb4e20',
      messagingSenderId: '1029392051297',
      projectId: 'notipotro',
      storageBucket: 'notipotro.firebasestorage.app',
      iosBundleId: 'com.myapp.firebase_note_app_realtime_db',
      databaseURL:
      'https://notipotro-default-rtdb.firebaseio.com/');
}