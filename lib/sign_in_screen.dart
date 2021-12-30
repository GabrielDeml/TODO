import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'sign_in.dart';

class GoogleSigIn extends StatefulWidget {
  const GoogleSigIn({Key? key}) : super(key: key);

  @override
  _GoogleSiginState createState() => _GoogleSiginState();
}

class _GoogleSiginState extends State<GoogleSigIn> {
  // Create sigin class
  final SignIn _signIn = SignIn();
  @override
  Widget build(BuildContext context) {
    // Show google sign in button and if user is signed in, show the user name
    return ElevatedButton(
      onPressed: () {
        _signIn.signInWithGoogle().whenComplete(() {
          Navigator.of(context).pushReplacementNamed('/home');
        });
      },
      child: const Text('Sign in with Google'),
    );
  }
}
