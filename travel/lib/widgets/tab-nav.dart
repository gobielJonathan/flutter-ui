import 'package:flutter/material.dart';

class TabNav extends StatefulWidget {
  final Widget child;
  TabNav({Key key, this.child }) : super(key: key);

  @override
  _TabNavState createState() => _TabNavState();
}

class _TabNavState extends State<TabNav> {

  int activeTab = 0;
  final navItems = ["Experiences","Places","Emotions","Experiences"];

  void onTabChange (int index) {
    setState(() {
      activeTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        Container(
          padding: EdgeInsets.symmetric(horizontal: 35.0),
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Row(
            children: <Widget>[
              
              Expanded(
                child: ListView.builder(
                  itemCount: navItems.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () => this.onTabChange(index),
                    child: _buildNavItems(navItems[index],index),
                  );
                 },
                ),
              )

            ],
          ),
        )
      ],
    );
  }

  SizedBox _buildNavItems(String title, int index) {
    return SizedBox(
      width: 140,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0
            ),
          ),
          SizedBox(height : 10),
          AnimatedContainer(
            width: activeTab == index ? 30 : 0,
            duration: Duration(milliseconds: 100),
            curve: Curves.linear,
            child: Container(
              width: activeTab == index ? 30 : 0,
              decoration: BoxDecoration(
                color: Color.fromRGBO(90, 109, 111, 1),
                borderRadius: BorderRadius.circular(4.0)
              ),
              height: 3,
            ),
          )
        ],
      ),
    );
  }
}