import 'package:flutter/material.dart';
import 'package:projet_1/screens/add_task_screen/add_task_screen.dart';
import 'package:projet_1/screens/home_screen/home_screen.dart';

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
          title: TextStyle(
            fontSize: 30,
            color: Color(0xFF454544),
            fontWeight: FontWeight.bold,
          ),
          headline: TextStyle(
            fontSize: 22,
            color: Color(0xFF454544),
            fontWeight: FontWeight.bold,
          ),
          body1: TextStyle(
            fontSize: 16,
            color: Color(0xFF454544),
            fontWeight: FontWeight.w500,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        fontFamily: 'Roboto',
        unselectedWidgetColor: Color(0xFFB45210).withOpacity(.3),
      ),
      home: Home(),
      routes: {
        '/': (context) => Home(),
        AddTaskScreen.routeName: (context) => AddTaskScreen(),
        
      }
    );
  }
}
