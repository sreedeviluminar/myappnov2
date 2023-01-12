import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    routes: {
      'first' : (context)=>FirstPage(),
      'second': (context)=>SecondPage(),
    },
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Named Routes'),
      ),
      body: ListView(
        children: [
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, 'first');
          }, child: const Text('FirstPage')),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, 'second');
          }, child: const Text('SecondPage'))
        ],
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'MyFirstScreen',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'MySecondScreen',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
