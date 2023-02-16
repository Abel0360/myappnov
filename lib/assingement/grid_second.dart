import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Grid_count(),debugShowCheckedModeBanner: false,));
}

class Grid_count extends StatelessWidget {

  var images = [

    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9PzhsoiTqulo_w8MVdRgacx9QUwiQB1E-_zpgSr-NLHx8li5AHQZvHNIsm4GVAEAeI8o&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRizE0f_CuIwouIrT2e5gfj7PEKrw0oWDYvrQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVljl_ptqi--ZzPgeGnDEwqm0eQ56TsozO6Q&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoJv9QBvJ0Vx3oiO1AUFmFDrgSVk4LpvaD2w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQM5weJZ4ByPR0O30ovQlb5N-s8q7FvzfMEDA&usqp=CAU",

  ];

  var text = [
    "USA",
    "ENGLAND",
    "FRANCE",
    "RUSSIA",
    "CANADA"


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: List.generate(5, (index) {
            return Stack(
                children: [
                  SizedBox(
                    height: 150,
                    width: 920,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        images[index],
                        height: 900,
                        width: 400,
                        fit: BoxFit.fill,
                      ),
                    ),
                    //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  Positioned(
                    top: 110,
                    left: 5,
                    child: Text(
                      text[index],
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ]);

          }),
        ));
  }
}