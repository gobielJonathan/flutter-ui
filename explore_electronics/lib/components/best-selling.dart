import 'package:explore_electronics/pages/cart.pages.dart';
import 'package:flutter/material.dart';

class BestSelling extends StatelessWidget {
  const BestSelling({Key key}) : super(key: key);


  void navigateToCard(BuildContext context){
    Navigator.push(context, MaterialPageRoute(
      builder: (context) => Cart()
    ));
  }
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20, left : 20, bottom : 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 35),
            child: Text(
              "Best Selling",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top : 10),
            padding: EdgeInsets.only(
              top: 5.0,
              bottom: 5.0,
              left: 5.0,
              right: 20.0
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(35.0),
                topLeft: Radius.circular(35.0),
                bottomLeft: Radius.circular(35.0),
                bottomRight: Radius.circular(40.0)
              ),
              color: Theme.of(context).backgroundColor
            ),
            child: Row(
              children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      "assets/images/hs.png",
                      fit: BoxFit.contain,
                      height: 130,
                    ),
                  ),

                  SizedBox(width : 10),
                  
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Bose",
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                        Text(
                          "Sound Sport Wireless",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "Rp. 222",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),

                  Align(
                    alignment: Alignment.bottomCenter,
                    child: GestureDetector(
                      onTap: () => this.navigateToCard(context),
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Icon(Icons.arrow_forward, color: Colors.black,),
                      ),
                    )
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}