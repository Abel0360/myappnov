import 'package:flutter/material.dart';

class Home_work extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Text(
          "WELCOME",
          style: TextStyle(fontSize: 55),
        ),
      ),
    );
  }
}
