import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Grid_Extent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(
          maxCrossAxisExtent: 60,
      children:List.generate(30, (index){
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Image(image: AssetImage("assets/icons/babydog.png"),),
          ),
        );
      }) ,)
    );
  }
}
