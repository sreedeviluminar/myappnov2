import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Grid_Extent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(
        maxCrossAxisExtent: 100,
        children: List.generate(10, (index) {
          return const Card(
            color: Colors.purple,
            child: Center(
              child: Text(
                "HEllo",
                style: TextStyle(fontSize: 10),
              ),
            ),
          );
        }),
      ),
    );
  }
}
