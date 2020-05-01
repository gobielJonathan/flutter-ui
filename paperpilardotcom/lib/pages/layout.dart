import 'package:flutter/material.dart';
import 'package:paperpilardotcom/pages/account.pages.dart';
import 'package:paperpilardotcom/pages/bookmark.pages.dart';
import 'package:paperpilardotcom/pages/home.pages.dart';
import 'package:paperpilardotcom/pages/search.pages.dart';

class Layout extends StatefulWidget {
  Layout({Key key}) : super(key: key);

  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int idxPage = 0;

  final pages = [
    MyHomePage(),
    Bookmark(),
    Search(),
    Account()
  ];

  Widget _iconButton(IconData icon, int index) {
    return IconButton(
        iconSize: 32.0,
        autofocus: true,
        focusColor: Theme.of(context).buttonColor,
        color: idxPage == index ? Theme.of(context).buttonColor : Theme.of(context).disabledColor,
        icon: Icon(icon), 
        onPressed: () {
          setState(() {
            this.idxPage = index;
          });
        }
      );
  }

  Widget _bottomNavigationBar(){
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30, bottom: 30),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(22, 96, 255, 1.2),
            blurRadius: 20.0,
            spreadRadius: 0.0,
            offset: Offset(0,8)
          )
        ],
        borderRadius: BorderRadius.all(Radius.circular(50))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _iconButton(Icons.home, 0),
          _iconButton(Icons.bookmark, 1),
          _iconButton(Icons.search, 2),
          _iconButton(Icons.account_circle, 3),
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: <Widget>[
          SingleChildScrollView(
              child: Container( 
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height,
                minWidth: MediaQuery.of(context).size.width,
              ),
              padding: EdgeInsets.symmetric(vertical:40, horizontal: 30),
              margin: EdgeInsets.only(bottom: 60),
              child: pages[idxPage]
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: _bottomNavigationBar()
          )
        ],
      )
    );
  }
}