import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

// For custom email and password.
final FirebaseAuth fireAuth = FirebaseAuth.instance;

// For google sign-in.
final GoogleSignIn googleSignIn = GoogleSignIn();

void signInWithGoogle() async {
  await googleSignIn.signIn();
}

void signOutGoogle() async {
  await googleSignIn.signOut();
}

void checkUserChanged(BuildContext context) {
  //  TODO : Check why there are some errors.
  googleSignIn.onCurrentUserChanged.listen((userAccount) {
    if (userAccount != null) {
      Navigator.pushNamedAndRemoveUntil(context, '/userHome', ModalRoute.withName('/userHome'));
    } else {
      Navigator.pushNamedAndRemoveUntil(context, '/loginScreen', (Route<dynamic> route) => false);
    }
  }, onError: (err) {
    print("Error on user change listener : $err");
  });
}

void silentSignIn() async {
  await googleSignIn.signInSilently(suppressErrors: false).then((userAccount) {
    signInWithGoogle();
  }, onError: (err) {
    print("Ignore if Platform Exception, it means user is not logged in.");
    print("Error on silent sign-in : $err");
  });
}
