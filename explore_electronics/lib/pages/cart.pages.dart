import 'package:explore_electronics/components/cart-list.dart';
import 'package:explore_electronics/layout.dart';
import 'package:flutter/material.dart';


class Cart extends StatefulWidget {
  Cart({Key key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {

  final cart = List.generate(3, (index) => "Bose sound sport wireless");

  void onRemove(BuildContext context, int index){
    setState(() {
      this.cart.removeAt(index);
    });
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('Cart Removed'),
      duration: Duration(seconds: 1),
    ));
  }

  void onBackPage(BuildContext context) => Navigator.pop(context);

  @override
  Widget build(BuildContext context) {
    return Layout(
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(244, 244, 244, 1),
        title: Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.black,
          ),
          child: GestureDetector(
            onTap: () => this.onBackPage(context),
            child: Align(
              alignment: Alignment.center,
              child: Icon(Icons.arrow_back, color: Colors.white),
            ),
          ),
        ),
      ),
      child: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Container(
              color: Color.fromRGBO(244, 244, 244, 1),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "My Cart",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0
                    ),
                  ),
                  
                  Expanded(
                    child: ListView.builder(
                      itemCount: cart.length,
                      itemBuilder: (BuildContext context, int index) => CartList(index: index + 1,onRemove:() => this.onRemove(context, index), ),
                    )
                  ),

                ],
              ),
            )
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              padding: EdgeInsets.symmetric(vertical: 25),
              child: Text(
                "Checkout",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            )
          )

        ],
      ),
    );
  }
}