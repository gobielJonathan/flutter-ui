import 'package:explore_electronics/components/best-selling.dart';
import 'package:explore_electronics/components/tab-electronic.dart';
import 'package:explore_electronics/layout.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Layout(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: Colors.white
          ),
          child: Icon(Icons.menu, color: Colors.black,),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.shopping_cart, color: Colors.white.withOpacity(.8),),
          )
        ],
      ),
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: Theme.of(context).backgroundColor,
          child: Column(
            children: <Widget>[
              //header
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 35.0),
                padding: EdgeInsets.symmetric(horizontal: 45.0),
                child: Text(
                  "Explore \nElectronics",
                  style: TextStyle(
                    fontSize: Theme.of(context).textTheme.display1.fontSize,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),


              //main
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(45.0), topRight: Radius.circular(45.0))
                ),
                child: Column(
                  children: <Widget>[
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 48,
                          height: 48,
                          margin: EdgeInsets.only(bottom : 20.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3.0,
                                color: Colors.black.withOpacity(.5),
                                offset: Offset(0, 2.5),
                              )
                            ]
                          ),
                          child: Icon(Icons.search, color: Colors.black,),
                        ),
                      ),
                      TabElectronic(),
                      BestSelling()
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}