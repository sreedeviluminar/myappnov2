import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.yellow,
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.yellow,
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.yellow,
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.orange
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 5,
            children: List.generate(20, (index) {
              return Card(
                color: colors[index],
                child: Image(
                  image: AssetImage(images[index]),
                ),
              );
            })));
  }
}
