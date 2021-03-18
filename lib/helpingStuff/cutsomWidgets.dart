import 'package:flutter/material.dart';

Widget customTextField(String label, IconData icon) {
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
      ),
      filled: true,
      fillColor: Colors.white70,
      hintText: label,
      hintStyle: TextStyle(
        color: Colors.black,
      ),
    ),
  );
}