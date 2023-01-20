import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
  debugShowCheckedModeBanner: false,));
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Image.asset("assets/icons/dog.png"),
            //Image(image: AssetImage("assets/icons/open.png"),),
           const Text("Welcome",style: TextStyle(fontSize: 30,color: Colors.black),)
          ],
        )
      ),
    );
  }
}
