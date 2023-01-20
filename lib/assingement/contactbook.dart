import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Contact_book(),debugShowCheckedModeBanner: false,));
}

class Contact_book extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Contact Book"),),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text("Anju A"),
              subtitle: Text("9876543210"),
              trailing: Wrap(
                  children:[
                    Icon(Icons.call),
                    SizedBox(width: 10,),
                    Icon(Icons.message)]),
              leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbySPOVJMWqKXXDjw9zQLk4k7k7T2xDXjzsw&usqp=CAU"),),

            ),
          ),Card(
            child: ListTile(
              title: Text("Basheer Salim"),
              subtitle: Text("9012345678"),
              trailing: Wrap(
                  children:[
                    Icon(Icons.call),
                    SizedBox(width: 10,),
                    Icon(Icons.message)]),
              leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbySPOVJMWqKXXDjw9zQLk4k7k7T2xDXjzsw&usqp=CAU"),),

            ),
          ),Card(
            child: ListTile(
              title: Text("Catherin Joseph"),
              subtitle: Text("7894561230"),
              trailing: Wrap(
                  children:[
                    Icon(Icons.call),
                    SizedBox(width: 10,),
                    Icon(Icons.message)]),
              leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbySPOVJMWqKXXDjw9zQLk4k7k7T2xDXjzsw&usqp=CAU"),),

            ),
          ),Card(
            child: ListTile(
              title: Text("Daniel John"),
              subtitle: Text("6987451230"),
              trailing: Wrap(
                  children:[
                    Icon(Icons.call),
                    SizedBox(width: 10,),
                    Icon(Icons.message)]),
              leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbySPOVJMWqKXXDjw9zQLk4k7k7T2xDXjzsw&usqp=CAU"),),

            ),
          ),Card(
            child: ListTile(
              title: Text("Elizabeth Fernandez"),
              subtitle: Text("7410852963"),
              trailing: Wrap(
                  children:[
                    Icon(Icons.call),
                    SizedBox(width: 10,),
                    Icon(Icons.message)]),
              leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbySPOVJMWqKXXDjw9zQLk4k7k7T2xDXjzsw&usqp=CAU"),),

            ),
          ),Card(
            child: ListTile(
              title: Text("Franklin Moonstar"),
              subtitle: Text("9510236478"),
              trailing: Wrap(
                  children:[
                    Icon(Icons.call),
                    SizedBox(width: 10,),
                    Icon(Icons.message)]),
              leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbySPOVJMWqKXXDjw9zQLk4k7k7T2xDXjzsw&usqp=CAU"),),

            ),
          ),Card(
            child: ListTile(
              title: Text("Ganga Pramod"),
              subtitle: Text("7648951230"),
              trailing: Wrap(
                  children:[
                    Icon(Icons.call),
                    SizedBox(width: 10,),
                    Icon(Icons.message)]),
              leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbySPOVJMWqKXXDjw9zQLk4k7k7T2xDXjzsw&usqp=CAU"),),

            ),
          )
        ],
      ),
    );
  }

}
