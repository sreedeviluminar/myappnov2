import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myappnov2/homepage.dart';

void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
    theme: ThemeData(primarySwatch: Colors.deepOrange),
    debugShowCheckedModeBanner: false,
  ));
}
class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}
class _SplashScreenState extends State {

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image(image: AssetImage("assets/icons/tiger.png")),
            Image.asset("assets/icons/tiger.png"),
            const Text(
              "Animals",
              style: TextStyle(fontSize: 50, color: Colors.deepOrange),
            )
          ],
        ),
      ),
    );
  }
}
