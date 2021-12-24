import 'package:firebase_auth/firebase_auth.dart';

class SignIn {
  GoogleAuthProvider googleProvider = GoogleAuthProvider();
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<UserCredential> signInWithGoogle() async {
    // Create a new provider

    googleProvider
        .addScope('https://www.googleapis.com/auth/contacts.readonly');
    googleProvider.setCustomParameters({'login_hint': 'user@example.com'});

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithPopup(googleProvider);
  }

  Future<User> getCurrentUser() async {
    return auth.currentUser!;
    // return user;
  }
}
