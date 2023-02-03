import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myappnov/homepage.dart';
import 'package:myappnov/login-with-validation.dart';

void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginForm()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(

          /// to set background color
          //color: Colors.blueGrey,
          /// to set background image
          //image: DecorationImage(
          //fit: BoxFit.cover,
          //image: NetworkImage(
            //"https://cdn.pixabay.com/photo/2017/08/30/01/05/milky-way-2695569__480.jpg"))),

          ///to set linear background color for container
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Colors.lightGreenAccent, Colors.lightGreen, Colors.lime,Colors.orangeAccent,Colors.orange])),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/icons/dog.png"),
          //Image(image: AssetImage("assets/icons/open.png"),),
          const Text(
            "MY PET STORE",
            style: TextStyle(fontSize: 30, color: Colors.black),
          )
        ],
      )),
    ));
  }
}
