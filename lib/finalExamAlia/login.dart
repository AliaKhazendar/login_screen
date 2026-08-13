import 'package:assignment3/finalExamAlia/restaurent.dart';
import 'package:flutter/material.dart';

class loginSc extends StatefulWidget {
  @override
  State<loginSc> createState() => loginScState();
}

class loginScState extends State<loginSc> {
  bool password = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          //
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 25),

                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 32),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        //
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 22,
                            height: 22,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/11.png"),
                                ),
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Commande",
                            style: TextStyle(
                              color: Color(0xFF059372),
                              fontSize: 16,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 35),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 32),
                    child: Text(
                      "Let's get started",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        //
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),

                  SizedBox(height: 5),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "Login to your account",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),

                  SizedBox(height: 30),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "Email",
                      style: TextStyle(
                        color: Colors.grey.shade900,
                        fontSize: 13,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),

                  Container(
                    height: 55,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    margin: EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 30,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade500,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "alia@gmail.com",
                        hintStyle: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 14,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 5),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "Password",
                      style: TextStyle(
                        color: Colors.grey.shade900,
                        fontSize: 13,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),

                  Container(
                    height: 55,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    margin: EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 30,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade500,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: TextField(
                      obscureText: password,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "************",
                        hintStyle: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 14,
                          fontFamily: "Poppins",
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            password
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            color: Color(0xFF22283A),
                            size: 20,
                          ),
                          onPressed: () {
                            setState(() {
                              password = !password;
                            });
                          },
                        ),
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {

                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Color(0xFF059372),
                          fontSize: 13,
                          fontFamily: "Poppins",
                        ),
                      ),
                      style: ButtonStyle(
                        padding: WidgetStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 30),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  Container(
                    height: 55,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RestaurantSc()),
                        );
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Color(0xFF059372),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  Center(
                    child: Text(
                      "Or login with account",
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 13,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),

                  SizedBox(height: 15),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: [

                        Expanded(
                          child: Container(
                            height: 48,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color:Color(0xFFE5E5E5)
                                //Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Image.asset(
                                "images/img_6.png",width: 18,height: 18,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(width: 10),

                        Expanded(
                          child: Container(
                            height: 48,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFFE5E5E5),
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.apple,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(width: 10),

                        Expanded(
                          child: Container(
                            height: 48,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFFE5E5E5),
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                                  child: Icon(
                                    Icons.facebook,
                                    color: Colors.blue,
                                  ),
                          ),
                        ),

                        )],
                    ),
                  ),

                  SizedBox(height: 55),

                  Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: TextStyle(
                            color: Color(0xFF555555),
                            fontSize: 13,
                            fontFamily: "Poppins",
                          ),
                        ),
                        Text(
                          "Register",
                          style: TextStyle(
                            color: Color(0xFF059372),
                            fontSize: 13,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}