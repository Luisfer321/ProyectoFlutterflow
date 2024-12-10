import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAVAWvZCoodsRe5nMA8h5gnv5fsc9aSH-4",
            authDomain: "proyecto-martes-definitivo.firebaseapp.com",
            projectId: "proyecto-martes-definitivo",
            storageBucket: "proyecto-martes-definitivo.firebasestorage.app",
            messagingSenderId: "264070569329",
            appId: "1:264070569329:web:fc4bce3540e83f896e2ad0",
            measurementId: "G-H8F1KZEE85"));
  } else {
    await Firebase.initializeApp();
  }
}
