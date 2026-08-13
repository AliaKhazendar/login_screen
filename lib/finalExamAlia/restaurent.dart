import 'package:flutter/material.dart';

class RestaurantSc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [

              //
              Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/restaurant.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      // Back
                      Container(
                        width: 32,
                        height: 32,
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: IconButton(
                          // عشان مش رضية تيجي بالنص عندها افترضي ف شلته
                            padding: EdgeInsets.zero,
                         icon:  Icon(Icons.arrow_back_ios_new , size: 12,),
                          color: Colors.black,
                            onPressed: () {
                              Navigator.pop(context);
                            }
                        )
                        ,
                      ),

                      Spacer(),

                      //
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Icon(
                          Icons.share,
                          size: 18,
                          color: Color(0xFF059372),
                        ),
                      ),

                      SizedBox(width: 5),

                      //
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Icon(
                          Icons.favorite_border,
                          size: 18,
                          color: Color(0xFF059372),
                        ),
                      ),

                      SizedBox(width: 5),

                      //
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Icon(
                          Icons.search,
                          size: 18,
                          color: Color(0xFF059372),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 14,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(
                          "Black and white burger\nRoncq",
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Poppins",
                            color: Color(0xFF252A3A),
                            height: 1.2,
                          ),
                        ),

                        SizedBox(height: 7),

                        Text(
                          "20-35 min • American • Burgers • Halal",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: "Poppins",
                            color: Colors.black87,
                          ),
                        ),

                        SizedBox(height: 3),
                        Row(
                          children: [
                            Icon(Icons.star, size: 16,color:Color(0xFF059372) ,),
                            SizedBox(width: 8),
                            Text(
                              " 4.1 Good (138) • 3.14 km away • Closes at 22:30",
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: "Poppins",
                                color: Color(0xFF059372),
                              ),
                            ),
                          ],
                        )
                        ,

                        SizedBox(height: 3),
                       //note : i used in my project to solve A RenderFlex overflowed by 470 pixels on the right
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 11,
                              fontFamily: "Poppins",
                              color: Colors.black,
                            ),
                            children: [
                              TextSpan(
                                text:
                                "\$10.00 minimum • \$1.99 delivery • ",
                              ),
                              TextSpan(
                                text: "Get free delivery",
                                style: TextStyle(
                                  color: Color(0xFF059372),
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 18),

                        //
                        Row(
                          children: [
                            Image.asset(
                                "images/img_5.png",
                              width: 22,
                              height: 22,
                            ),

                            SizedBox(width: 8),

                            Text(
                              "Delivery In 20-35 min",
                              style: TextStyle(
                                fontSize: 13,
                                fontFamily: "Poppins",
                              ),
                            ),

                            Spacer(),

                            Text(
                              "Change",
                              style: TextStyle(
                                color: Color(0xFF059372),
                                fontSize: 12,
                                fontFamily: "Poppins",
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 15),

                        // Info
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 13,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey.shade200,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.info_outline,
                                color: Color(0xFF059372),
                                size: 20,
                              ),

                              SizedBox(width: 8),

                              Text(
                                "Info (allergies and more)",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: "Poppins",
                                ),
                              ),

                              Spacer(),

                              Icon(
                                Icons.arrow_forward_ios,
                                size: 14,
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 10),

                        //
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 13,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey.shade200,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.help_outline,
                                color: Color(0xFF059372),
                                size: 20,
                              ),

                              SizedBox(width: 8),

                              Text(
                                "About Black and white burger",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: "Poppins",
                                ),
                              ),

                              Spacer(),

                              Icon(
                                Icons.arrow_forward_ios,
                                size: 14,
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 16),

                        //
                        Row(
                          children: [

                            //
                            Expanded(
                              child: Container(
                                height: 42,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFECC4C),
                                  borderRadius:
                                  BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                    "images/img_2.png"
                                    ),

                                    SizedBox(width: 5),

                                    Text(
                                      "Burger",
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(width: 10),

                            //
                            Expanded(
                              child: Container(
                                height: 42,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xFFFECC4C),
                                  ),
                                  borderRadius:
                                  BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                        "images/img_3.png",
                                      height: 26,
                                      width: 26,
                                    ),

                                    SizedBox(width: 5),

                                    Text(
                                      "Pizza",
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 15
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(width: 10),

                            //
                            Expanded(
                              child: Container(
                                height: 42,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xFFFECC4C),
                                  ),
                                  borderRadius:
                                  BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                        "images/img_4.png"
                                    ),

                                    SizedBox(width: 5),

                                    Text(
                                      "Soup",
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 18),

                        //
                        Row(
                          children: [

                            //  1
                            Expanded(
                              child: Column(
                                children: [
                                  Image.asset(
                                    "images/img_1.png",
                                    width: 55,
                                    height: 55,
                                    fit: BoxFit.contain,
                                  ),

                                  SizedBox(height: 5),

                                  Text(
                                    "Beef Burger",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontFamily: "Poppins",
                                    ),
                                  ),

                                  Text(
                                    "20\$",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Poppins",
                                      color: Color(0xFF059372),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //  2
                            Expanded(
                              child: Column(
                                children: [
                                  Image.asset(
                                    "images/img_1.png",
                                    width: 55,
                                    height: 55,
                                    fit: BoxFit.contain,
                                  ),

                                  SizedBox(height: 5),

                                  Text(
                                    "Beef Burger",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontFamily: "Poppins",
                                    ),
                                  ),

                                  Text(
                                    "20\$",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Poppins",
                                      color: Color(0xFF059372),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //  3
                            Expanded(
                              child: Column(
                                children: [
                                  Image.asset(
                                    "images/img_1.png",
                                    width: 55,
                                    height: 55,
                                    fit: BoxFit.contain,
                                  ),

                                  SizedBox(height: 5),

                                  Text(
                                    "Beef Burger",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontFamily: "Poppins",
                                    ),
                                  ),

                                  Text(
                                    "20\$",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Poppins",
                                      color: Color(0xFF059372),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 15),

                        // btn
                        Container(
                          height: 48,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xFF059372),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 12),

                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 6,
                                  vertical: 2,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.circular(4),
                                ),
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                    color: Color(0xFF059372),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              Spacer(),

                              Text(
                                "View Basket",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              Spacer(),

                              Text(
                                //
                                "\$12.34",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(width: 12),
                            ],
                          ),
                        ),

                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}