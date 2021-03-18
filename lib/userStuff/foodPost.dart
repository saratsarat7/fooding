import 'package:flutter/material.dart';
import 'package:fooding/userStuff/posts.dart';
import 'package:flutter_icons/flutter_icons.dart';

Widget foodPost(context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    child: ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: posts.length,
      itemBuilder: (ctx, i) {
        return Container(
          color: Colors.black54,
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image(
                            image: NetworkImage(posts[i].userImage),
                            width: 40,
                            height: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(posts[i].username),
                      ],
                    ),
                    IconButton(
                      icon: Icon(SimpleLineIcons.options),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),

              FadeInImage(
                image: NetworkImage(posts[i].postImage),
                placeholder: AssetImage("assets/posts/placeholder.png"),
                width: MediaQuery.of(context).size.width,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                        onPressed: () {},
                        icon: Icon(FontAwesome.heart_o),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(FontAwesome.comment_o),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(FontAwesome.send_o),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(FontAwesome.bookmark_o),
                  ),
                ],
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(
                  horizontal: 14,
                ),
                child: RichText(
                  softWrap: true,
                  overflow: TextOverflow.visible,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Liked By ",
                        style: TextStyle(color: Colors.white),
                      ),
                      TextSpan(
                        text: "Sigmund,",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      TextSpan(
                        text: " Yessenia,",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      TextSpan(
                        text: " Dayana",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      TextSpan(
                        text: " and",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: " 1263 others",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),

              // caption
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 5,
                ),
                child: RichText(
                  softWrap: true,
                  overflow: TextOverflow.visible,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: posts[i].username,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      TextSpan(
                        text: " ${posts[i].caption}",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),

              // post date
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 14,
                ),
                alignment: Alignment.topLeft,
                child: Text(
                  "Febuary 2020",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    ),
  );
}
