import 'package:flutter/material.dart';

class ElectronicListCart extends StatefulWidget {
  ElectronicListCart({Key key}) : super(key: key);

  @override
  _ElectronicListCartState createState() => _ElectronicListCartState();
}

class _ElectronicListCartState extends State<ElectronicListCart> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              offset: Offset(1, 1),
              color: Colors.black.withOpacity(.5)
            )
          ]
        ),
        child: Row(
          children: <Widget>[
            Text("a;sldams;ldm")
          ],
        ),
      ),
    );
  }
}