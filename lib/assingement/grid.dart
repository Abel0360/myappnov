import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Gridd(),
    debugShowCheckedModeBanner: false,
  ));
}

class Gridd extends StatelessWidget {
  var icons = [
    Icon(Icons.home),
    Icon(Icons.notification_important),
    Icon(Icons.linked_camera),
    Icon(Icons.star_border_outlined),
    Icon(Icons.portable_wifi_off_outlined),
    Icon(Icons.call),
    Icon(Icons.message),
    Icon(Icons.play_lesson_outlined),
    Icon(Icons.mic_off_outlined),
    Icon(Icons.local_hospital),
    Icon(Icons.access_time),
    Icon(Icons.add_chart)
  ];
  var colors =[
    Colors.green,
    Colors.red,
    Colors.blue,
    Colors.yellow,
    Colors.purple,
    Colors.teal,
    Colors.orange,
    Colors.grey,
    Colors.lime,
    Colors.cyan,
    Colors.pink,
    Colors.brown
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
      ),
      body: GridView.builder(
        itemCount: icons.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20),
        itemBuilder: (context, index) {
          return Card(
            color: colors[index],
            child: ListView(
                children: [
                  icons[index],
                  Text("Heart Shaker")
                ]),
          );
        },
        padding: EdgeInsets.all(20),
        shrinkWrap: true,
      ),
    );
  }
}