
import 'dart:async';


import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(MaterialApp(home: SplashScreen(),
  debugShowCheckedModeBanner: false,
  ));
}
class SplashScreen extends StatefulWidget {



  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initstate(){
    super.initState();
    Timer(Duration(seconds: 7), () {
      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
      // My_MainScreen()));
    });
  }
  Widget build(BuildContext context) {
 return Scaffold(
   body: Center(
     child: Container(width: 200,height: 200,

     child: Lottie.network(
         'https://assets10.lottiefiles.com/packages/lf20_Au6z826BEy.json'
     ),),
   )
 );
  }
}