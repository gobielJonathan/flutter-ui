import 'package:explore_electronics/utils/ui.dart';
import 'package:flutter/material.dart';

class CartList extends StatelessWidget {
  
  final VoidCallback onRemove;

  final int index;

  const CartList({Key key, this.onRemove, this.index}) : super(key: key);
   
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.2),
            blurRadius: 5.0,
            offset: Offset(1, 1)
          )
        ]
      ),
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 6.0),
      child: Row(
        children: <Widget>[
          Image.asset('assets/images/hs.png', fit: BoxFit.cover,height: 100,),

          SizedBox(width : 20.0),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "$index Bose sound", 
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "2 x Rp 15.000", 
                ),
              ],
            ),
          ),

          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: Icon(Icons.cancel),
              onPressed: this.onRemove
            ),
          )
        ],
      ),
    );
  }
}