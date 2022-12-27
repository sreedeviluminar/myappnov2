import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class List_with_custom extends StatelessWidget {
  var name = ['name1', 'name2', 'name3', 'name4', 'name5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.custom(
      childrenDelegate: SliverChildListDelegate([
        const Card(
          child: Text("Data1"),
        ),
        const Card(
          child: Text("Data1"),
        ),
        const Card(
          child: Text("Data1"),
        ),
        const Card(
          child: Text("Data1"),
        ),
        const Card(
          child: Text("Data1"),
        ),
      ])
      //SliverChildBuilderDelegate((context, index) {
      //   return Card(
      //     child: Text(name[index]),
      //   );
      // }, childCount: name.length),
    ));
  }
}
