// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned(
                  left: 0,
                  child: Image.asset(
                    "assets/images/signup_top.png",
                    width: 111,
                  )),
              Positioned(
                  bottom: 0,
                  child: Image.asset(
                    "assets/images/main_bottom.png",
                    width: 111,
                  )),
              SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Sign up",
                      style: TextStyle(
                        fontSize: 35,
                        fontFamily: "myfont",
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    SvgPicture.asset(
                      "assets/icons/signup.svg",
                      width: 140,
                      height: 140,
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple[200],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      width: 300,
                      height: 50,
                      child: TextField(
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: "Username : ",
                          labelStyle: TextStyle(
                            fontSize: 20,
                          ),
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.purple,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple[200],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      width: 300,
                      height: 50,
                      child: TextField(
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: "Your Email : ",
                          labelStyle: TextStyle(
                            fontSize: 20,
                          ),
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.purple,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple[200],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      width: 300,
                      height: 50,
                      child: TextField(
                        obscureText: true,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          hintText: " Password : ",
                          labelStyle: TextStyle(
                            fontSize: 20,
                          ),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.purple,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      // ignore: sort_child_properties_last
                      child: Text(
                        "Sign up",
                        style: TextStyle(fontSize: 27),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.purple),
                        foregroundColor: MaterialStatePropertyAll(Colors.white),
                        padding: MaterialStatePropertyAll(
                            EdgeInsets.symmetric(vertical: 15, horizontal: 99)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(66))),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account ? "),
                        GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, "/login");
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    SizedBox(
                      width: 300,
                      child: Row(
                        children: [
                          Expanded(
                              child: Divider(
                            height: 9,
                            thickness: 0.5,
                            color: Colors.purple[900],
                          )),
                          Text("OR"),
                          Expanded(
                              child: Divider(
                            height: 9,
                            thickness: 0.5,
                            color: Colors.purple[900],
                          )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 44),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(13),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.purple, width: 1)),
                            child: SvgPicture.asset(
                              "assets/icons/facebook.svg",
                              color: Colors.purple[700],
                              height: 20,
                            ),
                          ),
                          SizedBox(
                            width: 22,
                          ),
                          Container(
                            padding: EdgeInsets.all(13),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.purple, width: 1)),
                            child: SvgPicture.asset(
                              "assets/icons/google-plus.svg",
                              color: Colors.purple[700],
                              height: 20,
                            ),
                          ),
                          SizedBox(
                            width: 22,
                          ),
                          Container(
                            padding: EdgeInsets.all(13),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.purple, width: 1)),
                            child: SvgPicture.asset(
                              "assets/icons/twitter.svg",
                              color: Colors.purple[700],
                              height: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
