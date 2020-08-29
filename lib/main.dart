import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooding/helpingStuff/routeHelper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Food Network',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // Remove debug banner
      debugShowCheckedModeBanner: false,
      // Make it dark theme
      darkTheme: ThemeData.dark(),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
