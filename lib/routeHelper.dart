import 'package:flutter/material.dart';
import 'package:fooding/userHome.dart';
import 'package:fooding/foodSelector.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => FoodSelector(title: 'The Food Network'));
      case '/userHome':
        // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => UserPage(
              data: args,
            ),
          );
        }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        body: SafeArea(
          child: Expanded(
            child: Container(
              color: Colors.blueGrey,
              child: Text(
                'ERROR !! Invalid Route.',
              ),
          ),
        )),
      );
    });
  }
}
