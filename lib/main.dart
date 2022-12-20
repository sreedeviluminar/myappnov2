import 'dart:async';

import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
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
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        /// set color for screen background
        // color: Colors.red,
        /// set image for screen background
        // decoration: const BoxDecoration(
        //     image: DecorationImage(
        //         fit:BoxFit.cover,
        //         image:AssetImage(
        //             "assets/images/imag.jpg"))),
        /// set gradient for screen background
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
              end: Alignment.topRight,
              colors: [
                       Colors.blueAccent,
                       Colors.green,
                       Colors.yellow
          ])
        ),

      child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Image(image: AssetImage("assets/icons/tiger.png"))
              Image.asset("assets/icons/babydog.png"),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "My Pet Store",
                style: TextStyle(fontSize: 40, color: Colors.amber),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
