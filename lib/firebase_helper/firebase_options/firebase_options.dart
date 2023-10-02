import 'dart:io';
import 'package:firebase_core/firebase_core.dart';

class DefaultFirebaseConfig {
  static FirebaseOptions get platformOptions {
    if (Platform.isIOS) {
      return const FirebaseOptions(
        appId: '',
        apiKey: '',
        projectId: '',
        messagingSenderId: '',
        iosBundleId: '',
      );
    } else {
      return const FirebaseOptions(
        appId: '',
        apiKey: '',
        projectId: '',
        messagingSenderId: '',
      );
    }
  }
}