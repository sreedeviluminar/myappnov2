import 'package:flutter/material.dart';

// void main(){
//   runApp(MaterialApp(home: Home(),));
// }


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: const Center(
        child: Text(
          "WELCOME",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
