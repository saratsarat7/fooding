import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

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
