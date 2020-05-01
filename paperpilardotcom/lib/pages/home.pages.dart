import 'package:flutter/material.dart';
import 'package:paperpilardotcom/component/best-seller-list/best-seller-list.dart';
import 'package:paperpilardotcom/component/best-seller-slide/best-seller-slide.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

        Text(
          "Discover",
          style: Theme.of(context).textTheme.display1,
        ),
        
        SizedBox(
          height: 350,
          child: ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index)  => BestSellerSlide(),
          ),
        ),

        Text(
          "Best of the Week",
          style: Theme.of(context).textTheme.display2,
        ),

        ListView.builder(
          itemCount: 4,
          shrinkWrap: true,
          itemBuilder: (context, index) => BestSellerList(),
        )
      ],
    );
  }
}