import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooding/loginProvider.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title, Object data}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
    googleSignIn.onCurrentUserChanged.listen((userAccount) {
      if (userAccount != null) {
        Navigator.of(context).pushNamed('/userHome', arguments: userAccount);
      }
    }, onError: (err) {
      print("Error signing in : $err");
    });
    googleSignIn.signInSilently(suppressErrors: false).then((userAccount) {
      signInWithGoogle();
    }, onError: (err) {
      print("Error signing in : $err");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: bodyItems(),
      ),
    );
  }

  Decoration background() {
    return BoxDecoration(color: Colors.lightGreen);
  }

  Widget bodyItems() {
    return Container(
        decoration: background(),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sign In",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.black),
            ),
            TextField(
              decoration: InputDecoration(hintText: "User Name"),
            ),
            TextField(
              decoration: InputDecoration(hintText: "Password"),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: GestureDetector(
                      child: Image(
                        image: AssetImage("assets/main_page/facebook.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: GestureDetector(
                      child: Image(
                        image: AssetImage("assets/main_page/google.png"),
                        fit: BoxFit.cover,
                      ),
                      onTap: () {
                        signInWithGoogle();
                      },
                    ),
                  ),
                ),
              ],
            ),
            RaisedButton(
              child: Text(
                "SingIn",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                print("Hello");
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "New User ?",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ],
            ),
            Text(
              "Or",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),
            ),
            Text(
              "skip",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),
            ),
          ],
        ));
  }
}
