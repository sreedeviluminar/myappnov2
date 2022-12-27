import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: List_with_Builder(),));
}

class List_with_Builder extends StatelessWidget {

  var images = [
    "assets/icons/tiger.png",
    "assets/icons/shell.png",
    "assets/icons/babydog.png",
    "assets/icons/tiger.png",
    "assets/icons/shell.png"
  ];
  var colors = [800,600,400,200,100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context,index){
            return Card(
               color: Colors.green[colors[index]],
               child: Image.asset(images[index]),
            );
          },
          separatorBuilder: (context,index){
            return  Divider(
              thickness: 6,
              color: Colors.yellow[colors[index]],);
          },
          itemCount: images.length),
    );


  }
}