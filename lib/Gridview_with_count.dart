import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Grid_count()));
}

class Grid_count extends StatelessWidget {

  var images = [
    "assets/icons/tiger.png",
    "assets/icons/shell.png",
    "assets/icons/babydog.png",
    "assets/icons/tiger.png",
    "assets/icons/shell.png",
    "assets/icons/tiger.png",
    "assets/icons/shell.png",
    "assets/icons/babydog.png",
    "assets/icons/tiger.png",
    "assets/icons/shell.png",
    "assets/icons/tiger.png",
    "assets/icons/shell.png",
    "assets/icons/babydog.png",
    "assets/icons/tiger.png",
    "assets/icons/shell.png",
    "assets/icons/tiger.png",
    "assets/icons/shell.png",
    "assets/icons/babydog.png",
    "assets/icons/tiger.png",
    "assets/icons/shell.png"
  ];

  var colors = [
    Colors.yellow,
    Colors.teal,
    Colors.red,
    Colors.green,
    Colors.pink,
    Colors.yellow,
    Colors.teal,
    Colors.red,
    Colors.green,
    Colors.pink,
    Colors.yellow,
    Colors.teal,
    Colors.red,
    Colors.green,
    Colors.pink,
    Colors.yellow,
    Colors.teal,
    Colors.red,
    Colors.green,
    Colors.pink
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: List.generate(20, (index) {
            return Card(
              color: colors[index],
              child: Row(
                children: const [
                  Icon(Icons.home,size: 20,),
                  Text("Heart Breaker"),
                ],
              ),
            );
          }),
        ));
  }
}
