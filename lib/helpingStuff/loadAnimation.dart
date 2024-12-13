import 'package:flutter/material.dart';
import 'package:fooding/helpingStuff/loginProvider.dart';

class LoadScreen extends StatefulWidget {
  LoadScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoadScreenState createState() => _LoadScreenState();
}

class _LoadScreenState extends State<LoadScreen> {
  void initState() {
    super.initState();
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
    googleSignIn.signInSilently(suppressErrors: false).then((userAccount) {
      signInWithGoogle();
    }, onError: (err) {
      Navigator.pushNamedAndRemoveUntil(context, "/loginScreen", (Route<dynamic> route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Loading...",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CircularProgressIndicator(
                strokeWidth: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
