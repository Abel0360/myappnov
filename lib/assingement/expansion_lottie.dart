import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    home: Expansion_tilee(),
    debugShowCheckedModeBanner: false,
  ));
}

class Expansion_tilee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
              child: Text(
                "EXPERIENCE",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black, fontSize:45),
              )),
          Stack(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                child: Lottie.network(
                    "https://assets8.lottiefiles.com/packages/lf20_7x45GFUqeu.json",
                    fit: BoxFit.fill,
                    height: 200,
                    width: 500),
              ),
              const Positioned(
                left: 10,
                top: 25,
                bottom: 10,
                right: 10,
                child: ExpansionTile(
                  title: Text("Flutter Internship",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize:15)),
                  subtitle: Text("6 months+",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 10)),
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1628277613967-6abca504d0ac?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Zmx1dHRlcnxlbnwwfHwwfHw%3D&w=1000&q=80"),
                      ),
                      title: Text("Duration : 4 months"),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                child: Lottie.network(
                    "https://assets10.lottiefiles.com/packages/lf20_uUiMgkSnl3.json",
                    fit: BoxFit.fill,
                    height: 200,
                    width: 500),
              ),
              Positioned(
                left: 10,
                top: 10,
                bottom: 10,
                right: 10,
                child: ExpansionTile(
                  title: Text("Android Training",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 15)),
                  subtitle: Text("2 months",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize:10)),
                  children: [
                    Container(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1607877361964-bf792b65e593?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEzfHx8ZW58MHx8fHw%3D&w=1000&q=80"),
                        ),
                        title: Text(
                          "Duration : 2 months",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  child: Lottie.network(
                      "https://assets4.lottiefiles.com/packages/lf20_ccgpSdA7MB.json",
                      fit: BoxFit.fill,
                      height: 200,
                      width: 500)),
              const Positioned(
                left: 10,
                top: 10,
                bottom: 10,
                right: 10,
                child: ExpansionTile(
                  title: Text("Java Training",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize:15)),
                  subtitle: Text("2 months",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize:10)),
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://media.istockphoto.com/id/518002738/photo/java-button-on-computer-keyboard.jpg?b=1&s=170667a&w=0&k=20&c=JLfZo-jB94h7gw6ia8SdkxzVwEHVTvnIx-S_uoYlpr4="),
                      ),
                      title: Text("Duration : 2 months"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}