import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Drawer_Nav(),
    debugShowCheckedModeBanner: false,
    // theme: ThemeData(primarySwatch: Colors.deepOrange),
  ));
}

class Drawer_Nav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepOrange,
        title: const Text("Drawer"),

      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.white),
        // width: ,
        child: Drawer(
          child: Container( decoration: const BoxDecoration(
              gradient: LinearGradient(begin:Alignment.topCenter ,
                  end: Alignment.bottomCenter,
                  colors: [

                    Colors.orange,
                    Colors.red])
          ),
            child: ListView(
              children: [
                ListTile(
                  title: Text("Terra Corwall"),
                  subtitle: Text("Administrator"),
                  trailing: Icon(Icons.close),
                  leading: CircleAvatar(backgroundImage:AssetImage("assets/images/img1.png"),radius:50,),

                ),
                const ListTile(
                  leading: Icon(Icons.dashboard),
                  title: Text("Dashboard"),
                  // trailing: Icon(Icons.arrow_forward_ios),
                ),
                const ListTile(
                  leading: Icon(Icons.leaderboard),
                  title: Text("Leads"),
                  // trailing: Icon(Icons.arrow_forward_ios),
                ),
                const ListTile(
                  leading: Icon(Icons.group),
                  title: Text("Clients"),
                  // trailing: Icon(Icons.arrow_forward_ios),
                ),
                const ListTile(
                  leading: Icon(Icons.assignment),
                  title: Text("Project"),
                  // trailing: Icon(Icons.arrow_forward_ios),
                ),
                const ListTile(
                  leading: Icon(Icons.subscriptions),
                  title: Text("Subscription"),
                  // trailing: Icon(Icons.arrow_forward_ios),
                ),
                const ListTile(
                  leading: Icon(Icons.payment),
                  title: Text("Payments"),
                  // trailing: Icon(Icons.arrow_forward_ios),
                ),
                const ListTile(
                  leading: Icon(Icons.verified_user_outlined),
                  title: Text("User"),
                  // trailing: Icon(Icons.arrow_forward_ios),
                ),
                const ListTile(
                  leading: Icon(Icons.local_library_outlined),
                  title: Text("Library"),
                  // trailing: Icon(Icons.arrow_forward_ios),
                ),
                // Divider(
                //   thickness: 2,
                // ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      child: Text('Log Out'),
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),)
                  ),
                  // const ListTile(
                  //   leading: Icon(Icons.home),
                  //   title: Text("Home"),
                  //   trailing: Icon(Icons.arrow_forward_ios),
                  // ),
                )],
            ),
          ),
        ),
      ),
    );
  }
}