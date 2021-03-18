import 'package:flutter/material.dart';

class Post {
final String userImage;
final String username;
final String postImage;
final String caption;

  Post({
    this.userImage,
    this.username,
    this.postImage,
    this.caption
  });
}

List<Post> posts = [
  Post(
      username: "Brianne",
      userImage:
      "https://cdn.imgbin.com/3/12/17/imgbin-computer-icons-avatar-user-login-avatar-man-wearing-blue-shirt-illustration-mJrXLG07YnZUc2bH5pGfFKUhX.jpg",
      postImage:
      "https://images.pexels.com/photos/302769/pexels-photo-302769.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      caption: "Consequatur nihil aliquid omnis consequatur."),
  Post(
      username: "Henri",
      userImage:
      "https://cdn.imgbin.com/3/12/17/imgbin-computer-icons-avatar-user-login-avatar-man-wearing-blue-shirt-illustration-mJrXLG07YnZUc2bH5pGfFKUhX.jpg",
      postImage:
      "https://images.pexels.com/photos/884979/pexels-photo-884979.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      caption: "Consequatur nihil aliquid omnis consequatur."),
  Post(
      username: "Mariano",
      userImage:
      "https://cdn.imgbin.com/3/12/17/imgbin-computer-icons-avatar-user-login-avatar-man-wearing-blue-shirt-illustration-mJrXLG07YnZUc2bH5pGfFKUhX.jpg",
      postImage:
      "https://images.pexels.com/photos/291762/pexels-photo-291762.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      caption: "Consequatur nihil aliquid omnis consequatur."),
  Post(
      username: "Johan",
      userImage:
      "https://cdn.imgbin.com/3/12/17/imgbin-computer-icons-avatar-user-login-avatar-man-wearing-blue-shirt-illustration-mJrXLG07YnZUc2bH5pGfFKUhX.jpg",
      postImage:
      "https://images.pexels.com/photos/1536619/pexels-photo-1536619.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      caption: "Consequatur nihil aliquid omnis consequatur."),
  Post(
      username: "London",
      userImage:
      "https://cdn.imgbin.com/3/12/17/imgbin-computer-icons-avatar-user-login-avatar-man-wearing-blue-shirt-illustration-mJrXLG07YnZUc2bH5pGfFKUhX.jpg",
      postImage:
      "https://images.pexels.com/photos/247298/pexels-photo-247298.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      caption: "Consequatur nihil aliquid omnis consequatur."),
  Post(
      username: "Jada",
      userImage:
      "https://cdn.imgbin.com/3/12/17/imgbin-computer-icons-avatar-user-login-avatar-man-wearing-blue-shirt-illustration-mJrXLG07YnZUc2bH5pGfFKUhX.jpg",
      postImage:
      "https://images.pexels.com/photos/169191/pexels-photo-169191.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      caption: "Consequatur nihil aliquid omnis consequatur."),
  Post(
      username: "Crawford",
      userImage:
      "https://cdn.imgbin.com/3/12/17/imgbin-computer-icons-avatar-user-login-avatar-man-wearing-blue-shirt-illustration-mJrXLG07YnZUc2bH5pGfFKUhX.jpg",
      postImage:
      "https://images.pexels.com/photos/1252983/pexels-photo-1252983.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      caption: "Consequatur nihil aliquid omnis consequatur."),
];