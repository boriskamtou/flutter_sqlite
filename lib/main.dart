import 'package:flutter/material.dart';

import 'home_screen/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter sqlite',
      theme: ThemeData(
        primaryColor: Color(0xFFB45210),
        accentColor: Color(0xFFB45210),
        appBarTheme: AppBarTheme(elevation: 0, color: Colors.white),
        textTheme: TextTheme(
          headline: TextStyle(
            fontSize: 22,
            color: Color(0xFF454544),
            fontWeight: FontWeight.bold,
          ),
          body1: TextStyle(
            fontSize: 18,
            color: Color(0xFF7F7F7D),
          ),
        ),
        fontFamily: 'Roboto',
      ),
      home: Home(),
    );
  }
}
