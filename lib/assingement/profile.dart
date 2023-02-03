import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home:Profile1() ,
    debugShowCheckedModeBanner: false,));
}
class Profile1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.menu),
        title: const Text("Profile"),
        centerTitle: true,
        actions: [
          Icon(Icons.more_vert)
        ],
      ),
      body: Stack(
          children: [
            Image.asset("assets/images/mainscreen1.png",
                width: double.infinity,
                height:200,
                fit: BoxFit.cover),
            // Positioned(top: 25,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(padding: EdgeInsets.only(bottom:270),
                  child: MaterialButton(onPressed: (){},
                    elevation: 2,
                    color: Colors.red,
                    child: Icon(Icons.message,size: 27,),
                    padding: EdgeInsets.all(20),
                    shape: CircleBorder(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:150),
                  child:Column(
                      children: const [
                        CircleAvatar(
                          radius:60,
                          backgroundImage: AssetImage(
                              "assets/images/download.jpg"),
                          backgroundColor: Colors.transparent,),
                        Text("Hendry David",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue),),
                        Text("Model/Actor",style: TextStyle(color: Colors.green),),
                      ]),
                ),
                Padding(padding: const EdgeInsets.only(bottom: 275),
                  child: MaterialButton(onPressed: () {  },
                    elevation: 2,
                    color: Colors.blue,
                    child: Icon(Icons.add,size: 25,),
                    padding: EdgeInsets.all(20),
                    shape:CircleBorder() ,
                  ),
                ),],),
          ]),);
  }

}