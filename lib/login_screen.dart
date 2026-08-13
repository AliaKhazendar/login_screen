import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class loginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(primaryColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/bg_login.png"),
              fit: BoxFit.cover,
            ),
          ),
          width: double.infinity,
          //
          child: SafeArea(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Foody bite",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                        fontFamily: "Poppins",
                      letterSpacing: 2.5,
                    ),
                  ),
                  SizedBox(height: 150),
                  Container(
                    height: 60,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    decoration: BoxDecoration(
                      color: Colors.white.withAlpha(100),
                      // border: Border.all(
                      //   color: Colors.transparent
                      //       ,width: 10
                      // )
                      // Border(
                      //   left: BorderSide(
                      //     color: Colors.black,
                      //     width: 2
                      //   ),
                      //   top: BorderSide(
                      //       color: Colors.red,
                      //       width: 4
                      //   ),)
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: SizedBox(
                          width: 20,
                          height: 20,
                          child: Center(
                            child: SvgPicture.asset(
                              "images/ic_email.svg",
                              color: Colors.white,
                              width: 20,
                              height: 20,
                              // semanticsLabel: "",
                            ),
                          ),
                        ),
                        border: InputBorder.none,
                        hintText: "Email",
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          fontFamily: "Poppins",
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    decoration: BoxDecoration(
                      color: Colors.white.withAlpha(100),
                      // border: Border.all(
                      //   color: Colors.transparent
                      //       ,width: 10
                      // )
                      // Border(
                      //   left: BorderSide(
                      //     color: Colors.black,
                      //     width: 2
                      //   ),
                      //   top: BorderSide(
                      //       color: Colors.red,
                      //       width: 4
                      //   ),)
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: SizedBox(
                          width: 20,
                          height: 20,
                          child: Center(
                            child: SvgPicture.asset(
                              "images/ic_password.svg",
                              color: Colors.white,
                              width: 20,
                              height: 20,
                              // semanticsLabel: "",
                            ),
                          ),
                        ),
                        border: InputBorder.none,
                        hintText: "password",
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          fontFamily: "Poppins",
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forget your password?",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          fontFamily: "Poppins",
                          letterSpacing: 2,
                        ),
                      ),
                      style: ButtonStyle(
                        padding: WidgetStateProperty.all(EdgeInsets.all(20)),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
                        padding: EdgeInsets.symmetric(vertical: 15),
                        // shape: RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.circular(12),
                        // ),
                      ),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Create your account",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        fontFamily: "Poppins",
                        letterSpacing: 2,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                        decorationThickness: 2,),
                    ),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(20),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
