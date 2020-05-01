import 'package:flutter/material.dart';

class ElectronicItem extends StatelessWidget {
  const ElectronicItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric( horizontal: 30),
      width: 250,
      padding: EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        color: Color.fromRGBO(164, 164, 164, 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[

          Text(
            "Beats",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),

          Text(
            "Studio 3 wireless",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
              fontWeight: FontWeight.bold
            ),
          ),

          Center(
            child: Image.asset(
              "assets/images/hs.png",
              fit: BoxFit.contain,
              height: 250,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.white
                ),
                child: Text(
                  "#349",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.white
                ),
                padding: EdgeInsets.all(10.0),
                child: Icon(Icons.arrow_right),
              )
            ],
          )
        ],
      ),
    );
  }
}