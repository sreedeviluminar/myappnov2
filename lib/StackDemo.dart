import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mystack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Stack(
        children: [
          Container(
            height: 400,
            width: 400,
            color: Colors.red,
          ),
          const Positioned(
              right: 30,
              bottom: 10,
              child: Text(
                "SBI",
                style: TextStyle(fontSize: 20),
              )),
          const Positioned(
            child: Icon(
              Icons.comment_bank,
              size: 70,
            ),
          )
        ],
      ),
    ));
  }
}
