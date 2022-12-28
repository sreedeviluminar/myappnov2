import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Mystack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              width: 400,
              height: 400,
              color: Colors.red,
            ),
            Positioned(
              right: 30,
              bottom: 40,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.green,
              ),
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
