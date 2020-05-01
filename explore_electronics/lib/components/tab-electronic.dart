import 'package:explore_electronics/components/electronic-item.dart';
import 'package:flutter/material.dart';

class TabElectronic extends StatefulWidget {
  TabElectronic({Key key}) : super(key: key);

  @override
  _TabElectronicState createState() => _TabElectronicState();
}

class _TabElectronicState extends State<TabElectronic> {

  int tabActive = 0;
  final navHeaders = ["Laptop","Speakers","PC's","Mobiles"];

  void onNavChange(int index) {
    setState(() {
      this.tabActive = index;
    });
  }

  Widget _buildNavHeaderItems(String title, int index){
    return GestureDetector(
        onTap: () => onNavChange(index),
        child: Container(
        margin: EdgeInsets.only(right: 10.0),
        padding: EdgeInsets.symmetric(horizontal: 14.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: index == tabActive ? Color.fromRGBO(92, 92, 92, 1) : Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.0))
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(title, style: TextStyle(fontWeight: FontWeight.bold, color: index != tabActive ? Colors.black: Colors.white,)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 48, right: 20),
      margin: EdgeInsetsDirectional.only(bottom : 40),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 35,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: navHeaders.length,
              itemBuilder: (BuildContext context, int index) =>_buildNavHeaderItems(navHeaders[index],index),
            ),
          ),

          SizedBox(height:30),

          SizedBox(
            height: 450,
            child: ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) => ElectronicItem(),
            ),
          )
        ],
      ),
    );
  }
}