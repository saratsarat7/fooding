import 'package:flutter/material.dart';
import 'package:fooding/loginProvider.dart';

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
        Navigator.of(context).pushReplacementNamed('/userHome', arguments: userAccount);
      } else {
        Navigator.of(context).pushReplacementNamed('/loginScreen', arguments: userAccount);
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
