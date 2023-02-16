import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Pro_file(),debugShowCheckedModeBanner: false,));
}

class Pro_file extends StatelessWidget{
  var options=[
    "Privacy",
    "Purchase History",
    "Help & Support",
    "Settings",
    "Invite a friend",
    "Logout"
  ];
  var icons=[
    Icons.privacy_tip_outlined,
    Icons.history,
    Icons.help,
    Icons.settings,
    Icons.person_add,
    Icons.logout
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading:IconButton(onPressed: (){},
            icon: Icon(Icons.arrow_back,color: Colors.black54,)),
        actions: [
          IconButton(onPressed: () {  },
              icon: Icon(Icons.menu_rounded,color: Colors.black54,))
        ],
      ),
      body: Container(
        child: Column(
            children: [
              Center(
                  heightFactor: 2,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/Profile.jpg'),radius:50,)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,right: 8),
                    child: CircleAvatar(backgroundImage: AssetImage('assets/images/facebook.png'),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,right: 8),
                    child: CircleAvatar(backgroundImage: AssetImage('assets/images/twitter.jpg'),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,right: 8),
                    child: CircleAvatar(backgroundImage: AssetImage('assets/images/linkedin.png'),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: CircleAvatar(backgroundImage: AssetImage('assets/images/github.png'),),
                  )
                ],
              ),
              Center(
                child: Column(
                  children: [
                    Text("Jerin",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 50),),
                    Text("@webrror",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                    Text("Mobile App Developer",style: TextStyle(fontWeight: FontWeight.w500,fontSize:25),)
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*.60,
                  child:
                  ListView.builder(itemBuilder: (BuildContext context, int index) {
                    return Container(child: ListTile(
                      title: Text(options[index],),
                      leading: Icon(icons[index],color: Colors.black26,),
                      trailing: Icon
                        (Icons.arrow_forward_ios_outlined,),

                    ),
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(95)),border:Border.all(color: Colors.white),),);
                  },
                    itemCount: icons.length,)
              ),
            ]),
      ),);
  }

}