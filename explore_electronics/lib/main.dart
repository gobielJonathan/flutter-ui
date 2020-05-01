import 'package:explore_electronics/pages/home.pages.dart';
// import 'package:explore_electronics/pages/home.pages.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Colors.black,
        primaryColor: Colors.black,
        textTheme: TextTheme(
          display1: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold
          ),
        )
      ),
      home: HomePage(),
    );
  }
}

