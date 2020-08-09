import 'package:flutter/material.dart';

class FoodSelector extends StatefulWidget {
  FoodSelector({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FoodSelectorState createState() => _FoodSelectorState();
}

class _FoodSelectorState extends State<FoodSelector> {
  //  TODO: Convert this to welcome page.
  Expanded mainList(String row, String assetLink) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          print("Container " + row + " clicked");
          Navigator.of(context)
              .pushNamed('/userHome', arguments: 'Hello Second !!');
        },
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              image: DecorationImage(
                  image: AssetImage(assetLink), fit: BoxFit.cover)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            mainList("1", "assets/main_page/Vegetarian.jpeg"),
            mainList("2", "assets/main_page/Non-Vegetarian.jpg"),
            mainList("3", "assets/main_page/Eggetarian.jpg"),
          ],
        ),
      ),
    );
  }
}
