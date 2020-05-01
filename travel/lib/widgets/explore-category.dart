import 'package:flutter/material.dart';

class ExploreCategory extends StatelessWidget {
  final String iconUrl, title;
  final Color bg;

  const ExploreCategory({
    Key key,
    @required this.iconUrl,
    @required this.title,
    @required this.bg
  }) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 30.0),
      child: Column(
        children: <Widget>[
          Container(
            width: 80,
            height: 80,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: bg,
              borderRadius: BorderRadius.circular(10.0)
            ),
            child: Center(
              child: Image.asset("assets/icon/$iconUrl"),
            ),
          ),
          
          SizedBox(height: 10),

          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.0
            ),
          )
        ],
      ),
    );
  }
}