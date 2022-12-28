import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Grid_Custom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.custom(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      childrenDelegate: SliverChildBuilderDelegate((context, index) {
        return const Icon(
          Icons.attribution_rounded,
          size: 30,
          color: Colors.blue,
        );
      }, childCount: 20),
    ));
  }
}
