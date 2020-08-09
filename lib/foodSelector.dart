import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodSelector extends StatefulWidget {
  FoodSelector({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FoodSelectorState createState() => _FoodSelectorState();
}

class _FoodSelectorState extends State<FoodSelector> {
  //  TODO: Convert this to welcome page.

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
                    )),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: GestureDetector(
                        child: Image(
                      image: AssetImage("assets/main_page/google.png"),
                      fit: BoxFit.cover,
                    )),
                  ),
                ),
              ],
            ),
            RaisedButton(
              child: Text("Hello"),
              textColor: Colors.black,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: bodyItems(),
      ),
    );
  }
}
