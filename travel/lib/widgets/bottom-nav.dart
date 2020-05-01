import 'package:flutter/material.dart';
import 'package:travel/utils/ui.dart';

class BottomNav extends StatefulWidget {
  final ParamsCallback onChange;

  BottomNav({Key key,this.onChange}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}
class BottomNavItems {
  Icon icon;
  String text;
  BottomNavItems({
    @required this.icon,
    @required this.text
  });
}

class _BottomNavState extends State<BottomNav> {
  int activeIndex =0;

  final List bottomNavItems = [
    BottomNavItems(icon: Icon(Icons.home), text: "Home"),
    BottomNavItems(icon: Icon(Icons.notifications), text: "Notification"),
    BottomNavItems(icon: Icon(Icons.favorite_border), text: "Favorite"),
    BottomNavItems(icon: Icon(Icons.account_circle), text: "Account"),
  ];

  final colorStyle = TextStyle(
    color: Color.fromRGBO(133, 130, 139, 1),
    fontWeight: FontWeight.bold
  );

  void onMoveTab(int index){
    setState(() {
      this.activeIndex = index;
      widget.onChange(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 70,
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        boxShadow: [
          BoxShadow(
            blurRadius: 2.0,
            offset: Offset(0, -1),
            color: Colors.black.withOpacity(.1)
          )
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0)
        )
      ),
      child : Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
        
          _buildNavigationItems(Icons.home, "Home", 0),

          _buildNavigationItems(Icons.notifications, "Notification", 1),

          _buildNavigationItems(Icons.favorite, "Favorite", 2),

          _buildNavigationItems(Icons.account_circle, "Account", 3),

        ],
      )
    );
  }

  GestureDetector _buildNavigationItems(IconData icon, String text, int index) {
    return GestureDetector(
      onTap: () => this.onMoveTab(index),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 18.0),
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: activeIndex == index ? Color.fromRGBO(246, 245, 250, 1) : Colors.transparent
        ),
        child: Row(
          children: <Widget>[
            Icon(icon ,color: Color.fromRGBO(130, 125, 135, 1),),
            activeIndex == index ?  SizedBox(width : 5.0) : Container(),
            activeIndex == index ? Text(text, style: colorStyle,) : Container()
          ],
        ),
      ),
    );
  }
}