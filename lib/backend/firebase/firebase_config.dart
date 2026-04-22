import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD_iEjMoCyt9U-LkYifLZgjftw0fe1VzX4",
            authDomain: "e-commerce-sample-appli-qxyyj9.firebaseapp.com",
            projectId: "e-commerce-sample-appli-qxyyj9",
            storageBucket: "e-commerce-sample-appli-qxyyj9.firebasestorage.app",
            messagingSenderId: "444165391044",
            appId: "1:444165391044:web:0ebaede8ed2a6808877f91"));
  } else {
    await Firebase.initializeApp();
  }
}
