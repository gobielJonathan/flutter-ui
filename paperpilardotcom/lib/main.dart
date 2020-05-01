import 'package:flutter/material.dart';
import 'package:paperpilardotcom/pages/layout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'montserratRegular',
        primarySwatch: Colors.blue,
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        buttonColor: Color.fromRGBO(22, 96, 255, 1),
        disabledColor: Color.fromRGBO(199, 203, 220, 1),
        textTheme: TextTheme(
          display1: TextStyle(
            color: Color.fromRGBO(84, 89, 115, 1),
            fontSize: 32.0,
            fontFamily: 'montserratBold',
            fontWeight: FontWeight.bold
          ),
          display2: TextStyle(
            color: Color.fromRGBO(84, 89, 115, 1),
            fontSize: 24.0
          ),
          display3: TextStyle(
            color: Color.fromRGBO(84, 89, 115, 1),
            fontSize: 16.0
          )
        ),
        bottomAppBarTheme: BottomAppBarTheme(
          color: Color.fromRGBO(199, 203, 220, 1)
        )
      ),
      home: Layout(),
    );
  }
}

