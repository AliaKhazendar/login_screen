

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  //const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: 40,),
              searchBar(),
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Trending Restaurants" ,
                    style: TextStyle(fontWeight: FontWeight.bold
                    ,fontSize: 22,
                      color: Colors.black
                    ),
                  ),
                  Text("See all 24" , style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey
                  ),),
                ],
              ),
              SizedBox(height: 16,),
              Container(
                height: 270,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    trendResCell(),
                    trendResCell(),
                    trendResCell(),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Categories" ,
                    style: TextStyle(fontWeight: FontWeight.bold
                        ,fontSize: 22,
                        color: Colors.black
                    ),
                  ),
                  Text("See all 12" , style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey
                  ),),
                ],
              ),
              SizedBox(height: 16,),
              Container(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    cateoryCell(),
                    cateoryCell(),
                    cateoryCell(),
                    cateoryCell(),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Friends",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.black),
                  ),
                  Text(
                    "See all 56",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Container(
                height: 90,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    friendCell(),
                    friendCell(),
                    friendCell(),
                    friendCell(),
                    friendCell(),
                    friendCell(),
                  ],
                ),
              ),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );

  }
  Widget searchBar(){
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Color(0xFFE8E8E8))
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Find Restaurants",
          border: InputBorder.none,
          prefixIcon: SizedBox(
            width: 18,
            height: 18,
            child: Center(
              child: SvgPicture.asset("images/search.svg",height: 18, width: 18,),
            ),
          ),
          suffixIcon: SizedBox(
            width: 18,
            height: 18,
            child: Center(
              child: SvgPicture.asset("images/filter.svg",height: 18, width: 18,),
            ),
          )
        ),
      ),
    );
  }
  Widget trendResCell(){
    return Padding(padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 12),
    child: Container(
      clipBehavior: Clip.antiAlias,
          width: 350,
          height: 270,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(8),
            color: Colors.grey,
            boxShadow: [BoxShadow(color: Colors.black12,blurRadius: 10)]
          ),
          child:Stack(
            children: [
              Image.asset("images/cell1.jpeg"),
              Positioned(
                top: 8,
                left: 8,
                right: 8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                        child:Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Open",style: TextStyle(fontSize: 16,
                              color: Colors.green,fontWeight: FontWeight.bold),
                          ),
                        )
                    ),
                    Card(
                        child:Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                            SizedBox(
                            width: 18,
                            height: 18,
                            child: Center(
                              child: SvgPicture.asset("images/star.svg",height: 18, width: 18,),
                            ),
                          ),
                              SizedBox(width: 5,),
                              Text(
                                "4.5",style: TextStyle(fontSize: 14,
                                  color: Colors.black,fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                height: 100,
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Happy Bones" ,
                              style: TextStyle(fontWeight: FontWeight.bold
                                  ,fontSize: 16,
                                  color: Colors.black
                              ),
                            ),
                            SizedBox(width: 8,),
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(colors:[Color(-1864791),Colors.pink,]),
                                borderRadius: BorderRadiusDirectional.circular(16)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Italian" ,style: TextStyle(color: Colors.white), ),
                              ),
                            ),
                            SizedBox(width: 8,),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadiusDirectional.circular(16)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("1.2 Km" ,style: TextStyle(color: Colors.white), ),
                              ),
                            ),
                            SizedBox(width: 8),
                            circuleAvatars(),
                          ],
                        ),
                        SizedBox(width: 5,),
                        Text("394 Broome st , New York , NY 10013 , USA" , style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey
                        ),),
                      ],
                    ),
                  ),
                ),
              )


            ],
          ) ,
        )


    );


  }
  Widget cateoryCell(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 120 ,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(8),
          color: Colors.pink,
          image: DecorationImage(image: AssetImage("images/category.jpg"),fit: BoxFit.cover),
        ),
        child: Stack(children: [
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
               gradient: LinearGradient(begin:Alignment.topCenter ,
                   end: Alignment.bottomCenter,
                   colors: [Color(0xFF2DCEF8),Color(0X333B40FE)]),
               borderRadius: BorderRadius.circular(8)

            ),
          ),
          Center(
            child: Text("Italian",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.white
            ),),
          )
        ],),
      ),
    );
  }
  // الجزئية المكملة للاسايمنت
  Widget friendCell() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Color(0xFFE8E8E8), width: 2),
              image: DecorationImage(
                image: AssetImage("images/person.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
  // الجزئية الاضافية
  Widget circuleAvatars() {
    final List<String> images = [
      "images/person.jpg",
      "images/person.jpg",
      "images/person.jpg",
      "images/person.jpg",
    ];

    return SizedBox(
      width: 28 + (18 * (images.length - 1)),   // مقدار التداخل
      height: 28,
      child: Stack(
        children: List.generate(images.length, (index) {
          return Positioned(
            left: index * 18,
            child: Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
                image: DecorationImage(
                  image: AssetImage(images[index]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}



