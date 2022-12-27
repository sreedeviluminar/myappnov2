import 'package:flutter/material.dart';

class Grid_with_builder extends StatelessWidget{
  var images = [
    "assets/icons/tiger.png",
    "assets/icons/shell.png",
    "assets/icons/babydog.png",
    "assets/icons/tiger.png",
    "assets/icons/shell.png"
  ];
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3
            ),
            itemBuilder:(context,index){
              return Card(
                child: Image.asset(images[index]),
              );
            },
          itemCount: images.length,
        ),
     );
  }

}