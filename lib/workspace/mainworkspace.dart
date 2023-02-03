import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myappnov/workspace/homeworkspace.dart';

void main() {
  runApp(MaterialApp(
    home: Splash_Screen(),
    debugShowCheckedModeBanner: false,
  ));
}

class Splash_Screen extends StatefulWidget {
  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 7), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home_work()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration:const BoxDecoration(
           /// to set background color
            //color: Colors.lightBlueAccent


            /// to set background image
              //image: DecorationImage(
                //fit: BoxFit.cover,
                //image: NetworkImage("https://img.freepik.com/free-vector/game-landscape-with-tropical-plants_105738-749.jpg"))

           /// to give gradient
          gradient: LinearGradient(
            begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.lightGreenAccent, Colors.lime, Colors.orangeAccent, Colors.orange]
          )
          ),
          child: Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/icons/tiger.png"),
           const Text(
              "WELCOME TO JUNGLE BOOK",
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
          ],
      ),
    ),
        ));
  }
}
