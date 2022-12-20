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
    Timer(const Duration(seconds: 8), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        ///set background color for container
        //color: Colors.black,
         ///  set background image for container
        // decoration: const BoxDecoration(
        //     image: DecorationImage(
        //         fit: BoxFit.cover,
        //         image: NetworkImage(
        //             "https://free4kwallpapers.com/uploads/originals/2015/07/18/deep-blue-background.jpg"))),

        ///set linear backgrounconst d color for container
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin:Alignment.bottomCenter ,
              end: Alignment.topCenter,
              colors: [
                Colors.black38,
                Colors.grey,
                Colors.white54

          ]),
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
