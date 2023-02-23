import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Contacts_using_builder(),
  ));
}

class Contacts_using_builder extends StatelessWidget {
  var name = ['Tom Hanks', 'Jhonny Depp', 'Leonardo DiCaprio', 'Christian Bale', 'Cillian Murphy',];
  var phone = ['8758759357', '584875834759', '87583459343','9483026193' , '8346703510',];
  var images = [
    "assets/icons/dog.png",
    "assets/icons/dog.png",
    "assets/icons/dog.png",
    "assets/icons/dog.png",
    "assets/icons/dog.png"
  ];
  var colors = [500,400,300,200,100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAVOURITE CONTACTS'),
      ),
      body: ListView.builder(
          itemCount: name.length,
          itemBuilder: (BuildContext context, index) {
            return Card(
              color: Colors.blue[colors[index]],
              child: ListTile(
                title:Text(name[index]),
                subtitle:Text(phone[index]),
                leading:Image(image: AssetImage(images[index]),),
              ),
            );
          }),
    );
  }
}