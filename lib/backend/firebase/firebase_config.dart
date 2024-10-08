import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBImZ3bfwWGZe_zMluAEtSOIFUPefBnc2g",
            authDomain: "ecom-8177b.firebaseapp.com",
            projectId: "ecom-8177b",
            storageBucket: "ecom-8177b.appspot.com",
            messagingSenderId: "538237330288",
            appId: "1:538237330288:web:a334dc9f8ee392be4465b5"));
  } else {
    await Firebase.initializeApp();
  }
}
