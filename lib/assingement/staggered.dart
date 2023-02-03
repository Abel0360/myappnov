import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

void main() {
  runApp(MaterialApp(
    home: CardUi(),
    debugShowCheckedModeBanner: false,
  ));
}

class CardUi extends StatelessWidget {
  //const StaggeredAssign({super.key});

  @override
  Widget build(BuildContext context) {
    List<StaggeredTile> _staggeredStyle = const [
      StaggeredTile.count(1, 1.3),
      StaggeredTile.count(1, 2),
      StaggeredTile.count(1, 1.3),
      StaggeredTile.count(1, 2),
      StaggeredTile.count(1, 1.3),
    ];

    List<Tile> _tiles = const [
      Tile(
          url:
          'https://images.pexels.com/photos/5702958/pexels-photo-5702958.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          title: 'Mysteries',
          subtitle: 'Adventure'),
      Tile(
          url:
          'https://images.pexels.com/photos/14700407/pexels-photo-14700407.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          title: 'Walking!!',
          subtitle: 'A daily routine'),
      Tile(
          url:
          'https://images.pexels.com/photos/5974471/pexels-photo-5974471.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          title: 'Chrustmas cookies',
          subtitle: 'Yummy!!!'),
      Tile(
          url:"https://images.pexels.com/photos/3522528/pexels-photo-3522528.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          title: 'Snowy',
          subtitle: 'Winter Mood'),
      Tile(
          url:
          "https://images.pexels.com/photos/5702983/pexels-photo-5702983.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          title: 'Cookie',
          subtitle: 'House of Cookies')
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Staggered Assignment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: StaggeredGridView.count(
          mainAxisSpacing:3,
          crossAxisSpacing: 6,
          crossAxisCount: 2,
          staggeredTiles: _staggeredStyle,
          children: _tiles,
        ),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  final String url;
  final String title;
  final String subtitle;

  const Tile({
    Key? key,
    required this.url,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[300],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(url),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(subtitle),
                ],
              ),
            )
          ],
        ));
  }
}