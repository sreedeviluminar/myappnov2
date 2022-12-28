import 'package:flutter/material.dart';

class GridViewww extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: GridView(
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
      ),
      children: const [
        Image(image: AssetImage("assets/icons/tiger.png")),
        Image(image: AssetImage("assets/icons/tiger.png")),
        Image(image: AssetImage("assets/icons/tiger.png")),
        Image(image: AssetImage("assets/icons/tiger.png")),
        Image(image: AssetImage("assets/icons/tiger.png")),
        Image(image: AssetImage("assets/icons/tiger.png")),
        Image(image: AssetImage("assets/icons/tiger.png")),
        Image(image: AssetImage("assets/icons/tiger.png")),
        Image(image: AssetImage("assets/icons/tiger.png")),
        Image(image: AssetImage("assets/icons/tiger.png")),
        Image(image: AssetImage("assets/icons/tiger.png")),
        Image(image: AssetImage("assets/icons/tiger.png")),
      ],),
    );
  }
  
  
}