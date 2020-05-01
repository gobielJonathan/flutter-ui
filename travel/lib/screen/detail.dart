import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          FittedBox(
            fit: BoxFit.fill,
            child: Image.asset('assets/images/eifel.png'),
          ),

          Positioned(
            top: 40,
            left: 20,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0)
                ),
                child: Center(
                  child: Icon(Icons.chevron_left, color: Colors.black,),
                ),
              ),
            )
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: Container(
                height: 400,
                padding: EdgeInsets.only(top: 50.0, left: 30.0, right : 30,bottom: 25.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2.0,
                      offset: Offset(0, -1),
                      color: Colors.black.withOpacity(.1)
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0)
                  )
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Paris",
                          style: Theme.of(context).textTheme.title,
                        ),
                        Text(
                          "Rp. 150",
                          style: Theme.of(context).textTheme.title.apply(
                            color: Color.fromRGBO(70, 58, 84, 1)
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 30,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(Icons.location_on),
                            Text(
                              "France",
                              style: TextStyle(
                                color: Color.fromRGBO(123, 123, 123, 1),
                                fontSize: 18.0
                              ),
                            ),
                          ],
                        ),

                        Row(
                          children: <Widget>[
                            Text(
                              "4.5",
                              style: TextStyle(
                                color: Color.fromRGBO(123, 123, 123, 1),
                                fontSize: 18.0
                              ),
                            ),
                            Icon(Icons.star,color: Color.fromRGBO(234, 214, 139, 1))
                          ],
                        )
                      ],
                    ),

                    SizedBox(height: 20.0,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        Row(
                          children: <Widget>[
                            Container(
                              width: 50,
                              height: 50,
                              padding: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(223, 221, 234, 1),
                                borderRadius: BorderRadius.circular(7.0)
                              ),
                              child: Center(
                                child: Icon(Icons.event, color: Color.fromRGBO(137, 131, 167, 1)),
                              ),
                            ),

                            SizedBox(width: 10.0,),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Select Date",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),

                                SizedBox(height: 5.0,),

                                Text(
                                  "18 Sep - 20 Sep",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(210, 210, 210, 1)
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),


                        Row(
                          children: <Widget>[
                            Container(
                              width: 50,
                              height: 50,
                              padding: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(223, 221, 234, 1),
                                borderRadius: BorderRadius.circular(7.0)
                              ),
                              child: Center(
                                child: Icon(Icons.event, color: Color.fromRGBO(137, 131, 167, 1)),
                              ),
                            ),

                            SizedBox(width: 10.0,),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Guests",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),

                                SizedBox(height: 5.0,),

                                Text(
                                  "5 Guests",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(210, 210, 210, 1)
                                  ),
                                ),
                              ],
                            )
                          ],
                        )

                      ],
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                        "Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem",
                        style: TextStyle(
                          color: Color.fromRGBO(184, 184, 184, 1)
                        ),
                      ),
                    ),

                    Spacer(),

                    Row(
                      children: <Widget>[

                        Expanded(
                          flex: 3,
                          child: RaisedButton(
                            onPressed: () => {},
                            elevation: 0,
                            color: Color.fromRGBO(85, 56, 166, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)
                            ),
                            padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20.0),
                            child: Text(
                              "Book Your Trip",
                              style: TextStyle(
                                color: Colors.white
                              ),
                            ),
                          ),
                        ),

                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.only(left : 20),
                            padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20.0),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(246,244,255,1),
                              borderRadius: BorderRadius.circular(12.0)
                            ),
                            child: Icon(Icons.favorite_border),
                          ),
                        )

                      ],
                    )
                  ],
                ),
              ),
            )
          )


        ],
      ),
    );
  }
}