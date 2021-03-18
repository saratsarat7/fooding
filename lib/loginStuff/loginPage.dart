import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooding/helpingStuff//loginProvider.dart';
import 'package:fooding/helpingStuff/cutsomWidgets.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title, Object data}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
//  TODO: Check why the errors and also on remove until.
  @override
  void initState() {
    super.initState();
    googleSignIn.onCurrentUserChanged.listen((userAccount) {
      if (userAccount != null) {
        Navigator.pushNamedAndRemoveUntil(
            context, '/userHome', (Route<dynamic> route) => false);
//        Navigator.of(context).pushNamed('/userHome', arguments: userAccount);
      }
    }, onError: (err) {
      print("2");
      print("Error signing in : $err");
    });
    googleSignIn.signInSilently(suppressErrors: false).then((userAccount) {
      signInWithGoogle();
    }, onError: (err) {
      print("3");
      print("Error signing in : $err");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white60, Colors.green],
            begin: FractionalOffset.center,
            end: FractionalOffset.topRight,
            tileMode: TileMode.mirror,
          ),
        ),
        alignment: Alignment.center,
        padding: EdgeInsets.all(20),
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
            SizedBox.fromSize(size: Size(0, 20)),
            customTextField("Username", Icons.people),
            SizedBox.fromSize(size: Size(0, 20)),
            customTextField("Password", Icons.lock),
            SizedBox.fromSize(size: Size(0, 20)),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    child: Image(
                      image: AssetImage("assets/main_page/facebook.png"),
                    ),
                  ),
                ),
                SizedBox.fromSize(size: Size(10, 0)),
                Expanded(
                  child: GestureDetector(
                    child: Image(
                      image: AssetImage("assets/main_page/google.png"),
                    ),
                    onTap: () {
                      signInWithGoogle();
                    },
                  ),
                ),
              ],
            ),
            SizedBox.fromSize(size: Size(0, 20)),
            SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                onPressed: () {
                  print("im Pressed");
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                color: Colors.lightGreen,
                splashColor: Colors.blue,
                child: Text(
                  "Sign-In",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox.fromSize(size: Size(0, 20)),
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
                SizedBox.fromSize(size: Size(10, 0)),
                GestureDetector(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/signUpPage");
                  },
                )
              ],
            ),
            SizedBox.fromSize(size: Size(0, 10)),
            Text(
              "Or",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),
            ),
            SizedBox.fromSize(size: Size(0, 10)),
            GestureDetector(
              child: Text(
                "Explore >>",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.blue),
              ),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/guestHome', (Route<dynamic> route) => false);
                //TODO : Check in case user need to create account even after he skips this.
              },
            ),
          ],
        ));
  }
}
