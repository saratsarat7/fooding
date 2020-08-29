import 'package:flutter/material.dart';
import 'package:fooding/loginStuff/loginPage.dart';
import 'package:fooding/userStuff/userHome.dart';
import 'package:fooding/helpingStuff/loadAnimation.dart';
import 'package:fooding/loginStuff/signUpPage.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => LoadScreen(title: 'The Food Network'));
      case '/userHome':
        return MaterialPageRoute(
          builder: (_) => UserPage(
            data: args,
          ),
        );
      case '/loginScreen':
        return MaterialPageRoute(
          builder: (_) => LoginPage(
            data: args,
          ),
        );
      case '/signUpPage':
        return MaterialPageRoute(
          builder: (_) => SignUp(
            data: args,
          ),
        );
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Text("Error !! Invalid Route"),
              )
            ],
          ),
        ),
      );
    });
  }
}