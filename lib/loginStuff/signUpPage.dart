import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooding/helpingStuff/cutsomWidgets.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key, this.title, Object data}) : super(key: key);

  final String title;

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool vegetarian = false;
  bool eggetarian = false;
  bool nonVegetarian = false;

  void switchSelector(String type, bool state) {
    switch (type) {
      case "Vegetarian":
        this.vegetarian = state;
        break;
      case "Eggetarian":
        this.eggetarian = state;
        break;
      case "Non-Vegetarian":
        this.nonVegetarian = state;
        break;
    }
  }

  Widget foodPreferences(String type, bool value) {
    return Padding(
      padding: EdgeInsets.only(left: 0, right: 0, top: 5, bottom: 5),
      child: Row(
        children: [
          SizedBox(
            width: 150,
            child: Text(
              type,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ),
          Switch(
            value: value,
            onChanged: (state) {
              setState(() {
                switchSelector(type, state);
              });
            },
            activeColor: Colors.blue,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.green, Colors.white60],
              begin: FractionalOffset.center,
              end: FractionalOffset.bottomLeft,
              tileMode: TileMode.clamp,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: Text(
                  "Register",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox.fromSize(size: Size(0, 20)),
              customTextField("Name", Icons.account_circle),
              SizedBox.fromSize(size: Size(0, 20)),
              customTextField("Username", Icons.people),
              SizedBox.fromSize(size: Size(0, 20)),
              customTextField("Email", Icons.email),
              SizedBox.fromSize(size: Size(0, 20)),
              customTextField("Password", Icons.lock),
              SizedBox.fromSize(size: Size(0, 20)),
              Text(
                "Your Food Preference",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              foodPreferences("Vegetarian", this.vegetarian),
              foodPreferences("Eggetarian", this.eggetarian),
              foodPreferences("Non-Vegetarian", this.nonVegetarian),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: RaisedButton(
                  onPressed: () {
                    print("im Pressed");
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  color: Colors.green,
                  splashColor: Colors.lightBlueAccent,
                  child: Text("Sign-Up"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
