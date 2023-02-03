import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginFormState();
}

class _LoginFormState extends State {
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LoginForm"),
      ),
      body: Form(
        child: ListView(
          children: [
            const Center( child: Text("LoginPage"),),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "UserName",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                ),
                textInputAction: TextInputAction.next,
              ),
            ),
            Padding(
                padding: EdgeInsets.all(30),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
              ),
              textInputAction: TextInputAction.done,
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100,right: 100),
              child: ElevatedButton(onPressed: () {}, child: const Text("Login")),
            )],
        ),
      ),
    );
  }
}
