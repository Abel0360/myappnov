import 'package:flutter/material.dart';

class listpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("MY PET STORE 1")),
      body: ListView(
        children: const [
          ListTile(
            title: Text("petshop 1"),
            subtitle: Text("description"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage("https://media.istockphoto.com/id/892381986/vector/pet-shop-sign-with-cute-dog-and-cat.jpg?s=612x612&w=0&k=20&c=2De4xrNAqG4-wqvWF6_auPJoyPbwzPQHCb4j05c7e0M="),
            ),
          )
        ],
      ),
    );
  }
}
      

