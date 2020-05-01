import 'package:flutter/material.dart';
import 'package:paperpilardotcom/component/rating/rating.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      margin: EdgeInsets.only(bottom: 20.0),
      child: Row(
        children: <Widget>[
          Container(
            width: 70,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Text("Ae", style: TextStyle(fontSize: 30.0),),
          ),
          SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Rating(),
              Text(
                "After Effects CC Masterclass",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                "Duration : 2h 34m",
                style: TextStyle(
                  fontSize: 12.0,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}