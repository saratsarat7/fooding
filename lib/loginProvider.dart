import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';


// For custom email and password.
final FirebaseAuth fireAuth = FirebaseAuth.instance;

// For google sign-in.
final GoogleSignIn googleSignIn = GoogleSignIn();

signInWithGoogle() {
  googleSignIn.signIn();
}

void signOutGoogle() async {
  await googleSignIn.signOut();
}

//TODO : Still need to fix some platform exception issues
void checkUserState(BuildContext context) async{
  var route = ModalRoute.of(context);
  if(route!=null){
    print(route.settings.name);
  }

  googleSignIn.onCurrentUserChanged.listen((userAccount) {
    if (userAccount != null) {
      Navigator.pushNamedAndRemoveUntil(context, "/userHome", (Route<dynamic> route) => false);
    } else {
      Navigator.pushNamedAndRemoveUntil(context, "/loginScreen", (Route<dynamic> route) => false);
    }
  }, onError: (err) {
    print("1");
    print("Error signing in : $err");
  });
}

void googleSilentSignIn(BuildContext context) async {
  var routeName = ModalRoute.of(context).settings.name;
  print("In Silent Sign In : $routeName");
  googleSignIn.signInSilently(suppressErrors: false).then((userAccount) {
    signInWithGoogle();
  }, onError: (err) {
    Navigator.pushNamedAndRemoveUntil(context, "/loginScreen", (Route<dynamic> route) => false);
  });
}