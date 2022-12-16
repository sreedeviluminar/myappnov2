import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: SplashScreen()));
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Icon(
          Icons.adb_outlined,
          size: 100,
          color: Colors.green,
        ),
      ),
    );
  }
}
