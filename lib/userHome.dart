import 'package:flutter/material.dart';
import 'package:fooding/foodPost.dart';
import 'package:fooding/userProfile.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:fooding/loginProvider.dart';

class UserPage extends StatefulWidget {
  UserPage({Key key, this.title, GoogleSignInAccount data}) : super(key: key);

  final String title;

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  int currentIndex = 0;
  String appBarTitle = "Your Feeds";
  Widget userBody = home();

  @override
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
  }

  static Widget home() {
    return SafeArea(
      child: ListView(children: <Widget>[
        foodPost(),
      ]),
    );
  }

  void loadPage(int index) {
    if (index == 0) {
      appBarTitle = "Your Feeds";
      userBody = home();
    } else {
      appBarTitle = "Profile";
      userBody = profile();
    }
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
      ),
      body: userBody,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text('Home'),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
              backgroundColor: Colors.green)
        ],
        onTap: (index) {
          loadPage(index);
        },
      ),
    );
  }
}
