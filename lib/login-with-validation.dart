import 'package:flutter/material.dart';
import 'package:myappnov/contactbook.dart';

import 'list_page.dart';

class LoginForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginFormState();
}

class _LoginFormState extends State {
  var formkey = GlobalKey<FormState>();
  bool showpassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LoginForm"),
      ),
      body: Form(
        key: formkey,
        child: ListView(
          children: [
            const Center(
              child: Text("LoginPage"),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 50, right: 50, bottom: 20, top: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.account_circle_rounded),
                    labelText: "Enter Username",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                textInputAction: TextInputAction.next,
                validator: (email) {
                  if (email!.isEmpty || !email.contains('@')) {
                    return 'Enter a valid email';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, bottom: 20),
              child: TextFormField(
                obscureText: showpassword,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.visibility_off),



                       // password hide and show button
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {

                          if(showpassword){
                            showpassword = false;
                          } else {
                            showpassword = true;
                          }
                        });
                      },
                      icon: Icon(
                        showpassword == true
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                    ),



                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),

                textInputAction: TextInputAction.done,
                validator: (password) {
                  if (password!.isEmpty || password.length < 6) {
                    return 'Enter a valid Password, should contain  6 character';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, right: 80),
              child: ElevatedButton(
                  onPressed: () {
                    final valid = formkey.currentState!.validate();
                    if (valid) {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => list_page()));
                    } else {
                      return null;
                    }
                  },
                  child: const Text("Login")),
            )
          ],
        ),
      ),
    );
  }
}
