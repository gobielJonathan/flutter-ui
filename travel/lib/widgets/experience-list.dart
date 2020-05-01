import 'package:flutter/material.dart';
import 'package:travel/screen/detail.dart';

class ExperienceList extends StatelessWidget {
  final String imageURL, title;
  const ExperienceList({
    Key key,
    @required this.imageURL,
    @required this.title
  }) : super(key: key);

 void navigateDetail(context){
    Navigator.push(context, MaterialPageRoute(
      builder: (context) => Detail()
    ));
  }
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => this.navigateDetail(context),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              blurRadius: 5.0,
              color: Colors.black.withOpacity(.1),
              offset: Offset(2, 1)
            )
          ]
        ),
        margin: EdgeInsets.only(left : 10,right: 30, top: 40.0, bottom: 40.0),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(imageURL, fit: BoxFit.fill,height: 350,),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10.0)
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.1),
                      blurRadius: 4,
                      offset: Offset(1, 1)
                    )
                  ]
                ),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}