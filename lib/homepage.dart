import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Column(
        children: [
          const Center(
              child: Text(
            "LoginPage",
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
          )),
           Padding(
            padding: EdgeInsets.all(50),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle_rounded),
                  hintText: "Enter Username",
                  labelText: "USERNAME",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 50,
              right: 50,
              bottom: 20,
            ),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.visibility_off),
                  suffixIcon: Icon(Icons.visibility_outlined),
                  hintText: "Enter Password",
                  labelText: "PASSWORD",
                  border: OutlineInputBorder()),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Fluttertoast.showToast(
                    msg: "This is Center Short Toast",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
              child: const Text("Login")),
          SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: () {}, child: const Text("Not a User?  Register Here"))
        ],
      ),
    );
  }
}
