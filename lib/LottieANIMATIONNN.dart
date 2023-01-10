import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    home: MyLottie(),
  ));
}

class MyLottie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Lottie.network(
              'https://assets8.lottiefiles.com/packages/lf20_dzevxknz.json',
              height: 200,
              width: 200),
          Lottie.asset('assets/anim/cutechicken.json', height: 200, width: 200),
        ],
      ),
    );
  }
}
