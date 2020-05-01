import 'package:flutter/material.dart';
import 'package:travel/_layout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Colors.white,
        primaryIconTheme: IconThemeData(
          color: Colors.black,
          size: 32
        ),
        textTheme: TextTheme(
          title: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25.0
          ),
          caption: TextStyle(
            color: Color.fromRGBO(138, 79, 25, 1),
            fontWeight: FontWeight.bold,
          ),
          body1: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15.0
          )
        )
      ),
      home: Layout()
    );
  }
}

