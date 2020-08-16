import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

  Widget foodPreferences(String type, bool value) {
    return Padding(
      padding: EdgeInsets.only(left: 100, right: 100, top: 5, bottom: 5),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              type,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Switch(
              value: value,
              onChanged: (state) {
                setState(() {
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
                });
              },
              activeColor: Colors.green,
            ),
          ),
        ],
      ),
    );
  }

  Widget textField(String label, IconData icon) {
    return TextField(
      decoration: new InputDecoration(
        prefixIcon: Padding(
          padding: EdgeInsets.all(0.0),
          child: Icon(
            icon,
            color: Colors.black,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide(
            width: 1,
          ),
        ),
        filled: true,
        hintText: label,
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Register",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox.fromSize(
                size: Size(0, 20),
              ),
              textField("Name", Icons.account_circle),
              SizedBox.fromSize(
                size: Size(0, 20),
              ),
              textField("Username", Icons.people),
              SizedBox.fromSize(
                size: Size(0, 20),
              ),
              textField("Email", Icons.email),
              SizedBox.fromSize(
                size: Size(0, 20),
              ),
              textField("Password", Icons.lock),
              SizedBox.fromSize(
                size: Size(0, 20),
              ),
              Text(
                "Your Food Preference",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              foodPreferences("Vegetarian", this.vegetarian),
              foodPreferences("Eggetarian", this.eggetarian),
              foodPreferences("Non-Vegetarian", this.nonVegetarian),
              SizedBox(
                width: 200,
                height: 40,
                child: RaisedButton(
                  onPressed: () {
                    print("im Pressed");
                  },
                  elevation: 10,
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
