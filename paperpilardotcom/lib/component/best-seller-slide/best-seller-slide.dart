import 'package:flutter/material.dart';

class BestSellerSlide extends StatelessWidget {
  const BestSellerSlide({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0, bottom: 30.0,right: 20.0),
      padding: EdgeInsets.all(20.0),
      width: MediaQuery.of(context).size.width - 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Text(
              "Best Seller",
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        image: DecorationImage(
          image : AssetImage("assets/images/leadership.png"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(.5), BlendMode.dstATop)
        ),
      ),
    );
  }
}