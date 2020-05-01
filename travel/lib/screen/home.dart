import 'package:flutter/material.dart';
import 'package:travel/widgets/experience-list.dart';
import 'package:travel/widgets/explore-category.dart';
import 'package:travel/widgets/tab-nav.dart';

class Experience{
  String title, image;
  Experience({
    @required this.title,
    @required this.image
  });
}

class ExploreCategoryModel{
  final String iconUrl, title;
  final Color bg;

  ExploreCategoryModel({
    @required this.iconUrl,
    @required this.title,
    @required this.bg,
  });

}

class Home extends StatelessWidget {

  Home({Key key}) : super(key: key);

  final experienceList = [
    Experience(title: "Paris", image: "eifel.png"),
    Experience(title: "China", image: "china.png"),
    Experience(title: "Lotus", image: "lotus.png"),
    Experience(title: "Coloseum", image: "coloseum.png")
  ];

  final exploreCategoryModel = [
    ExploreCategoryModel(iconUrl: "beach.png", title: "beach", bg: Color.fromRGBO(236, 243,253, 1)),
    ExploreCategoryModel(iconUrl: "snow.png", title: "snow", bg: Color.fromRGBO(253, 245,243, 1)),
    ExploreCategoryModel(iconUrl: "hiking.png", title: "hiking", bg: Color.fromRGBO(253, 248,244, 1)),
    ExploreCategoryModel(iconUrl: "forest.png", title: "forest", bg: Color.fromRGBO(240, 245,248, 1)),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color.fromRGBO(250, 250, 252, 1),
             boxShadow: [
              BoxShadow(
                blurRadius: 2.0,
                offset: Offset(0, 1),
                color: Colors.black.withOpacity(.1)
              )
            ],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0)
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30.0, horizontal:35.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Hi There,",
                      style: Theme.of(context).textTheme.title,  
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Enjoy the world best experienced trip.",
                      style: Theme.of(context).textTheme.body1.apply(
                        color: Color.fromRGBO(149, 149, 151, 1)
                      ),  
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              TabNav()
            ],
          ),
        ),


        Container(
          margin: EdgeInsets.only(left: 30.0,bottom: 30.0),
          child : Column(
            children: <Widget>[

              SizedBox(
                width: double.infinity,
                height: 350,
                child: ListView.builder(
                    itemCount: experienceList.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      final Experience data = experienceList[index];
                      return ExperienceList(
                        imageURL: 'assets/images/${data.image}',
                        title: "${data.title}",
                      );
                  },
                ),
              ),

              Padding(
                padding: EdgeInsets.only(right: 30.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Explore More",
                      style: Theme.of(context).textTheme.title,
                    ),
                    Spacer(),
                    Text(
                      "See all",
                      style: TextStyle(
                        color: Color.fromRGBO(144, 144, 144, 1),
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height : 30),

              SizedBox(
                height: 180,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: exploreCategoryModel.length,
                        itemBuilder: (BuildContext context, int index) {
                          final data = exploreCategoryModel[index];
                          return ExploreCategory(
                            iconUrl: data.iconUrl, 
                            title: data.title,
                            bg: data.bg
                          );
                        },
                      ),
                    )

                  ],
                ),
              )

            ],
          ),
        ) 


      ],
    );
  }
}