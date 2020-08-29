import 'package:flutter/material.dart';
import 'package:fooding/helpingStuff/loginProvider.dart';

Widget profile() {
  return SafeArea(
    child: Column(
      children: <Widget>[
        Row(children: <Widget>[
          new Text("Hello"),
          new Text("Hello"),
          new Text("Hello"),
          new Text("Hello"),
        ]),
        new Text("Hello"),
        new Text("Hello"),
        new Text("Hello"),
        RaisedButton(
          child: Text(
            "Sign-Out",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          onPressed: (){
            signOutGoogle();
          },
        ),
      ],
    ),
  );
}
