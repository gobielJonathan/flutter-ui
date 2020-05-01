import 'package:flutter/material.dart';
import 'package:travel/screen/home.dart';
import 'package:travel/widgets/bottom-nav.dart';

class Layout extends StatefulWidget {
  final Widget appBar;

  Layout({Key key, this.appBar }) : super(key: key);

  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  

   @override
  Widget build(BuildContext context) {

    int activePage = 0;

    final pages = [
      Home()
    ];

    void onPageChange(int index){
      setState(() {
        activePage = index;
      });
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(250, 250, 252, 1),
        automaticallyImplyLeading: false,        
        title: Container(
          child: IconTheme(data: Theme.of(context).primaryIconTheme, child: Icon(Icons.menu)),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: IconTheme(data: Theme.of(context).primaryIconTheme, child: Icon(Icons.search)),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Theme.of(context).backgroundColor,
          child: Stack(
            children: <Widget>[

              SingleChildScrollView(
                child: pages[activePage],
              ),
              
              Positioned(
                bottom: 0,
                left: 0,
                width: MediaQuery.of(context).size.width,
                child: BottomNav(onChange: (index) => onPageChange(index),),
              )
            ],
          ),
        ),
      ),
    );
  }

}