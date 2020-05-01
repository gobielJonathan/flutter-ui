import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Icon(Icons.star, size: 16.0,color: Colors.orange,),
        Icon(Icons.star, size: 16.0,color: Colors.orange,),
        Icon(Icons.star, size: 16.0,color: Colors.orange,),
        Icon(Icons.star, size: 16.0,color: Colors.orange,)
      ],
    );
  }
}