import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Grid_Custom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          childrenDelegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              child: ListView(
                children: const [
                  Center(child: Text("Hello")),
                  SizedBox(height: 2,),
                  Icon(
                    Icons.ac_unit,
                    color: Colors.red,
                  )
                ],
              ),
            );
          },
          childCount: 10)),
    );
  }
}
