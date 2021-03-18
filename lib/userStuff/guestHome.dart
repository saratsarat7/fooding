import 'package:flutter/material.dart';
import 'package:fooding/userStuff/foodPost.dart';
import 'package:fooding/userStuff/searchBar.dart';

class GuestPage extends StatefulWidget {
  GuestPage({Key key, this.title, Object data}) : super(key: key);

  final String title;

  @override
  _GuestPageState createState() => _GuestPageState();
}

class ListWords {
  String titlelist;
  String definitionlist;

  ListWords(String titlelist, String definitionlist) {
    this.titlelist = titlelist;
    this.definitionlist = definitionlist;
  }
}

class _GuestPageState extends State<GuestPage> {
  List<ListWords> listWords = [
    ListWords('oneWord', 'OneWord definition'),
    ListWords('twoWord', 'TwoWord definition.'),
    ListWords('TreeWord', 'TreeWord definition'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Explore"),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: DataSearch(listWords));
            },
          ),
        ],
      ),
      body: home(),
    );
  }

  Widget home() {
    return SafeArea(
      child: ListView(children: <Widget>[
        foodPost(),
      ]),
    );
  }
}
