import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyBottomBar(),
  ));
}

class MyBottomBar extends StatefulWidget {
  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  List screen = const [
    Text("Home"),
    Text('Favorite'),
    Text('People'),
    Text('Search')
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomBar'),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(80), topRight: Radius.circular(80)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex: index,
          onTap: (tapindex) {
            setState(() {
              index = tapindex;
            });
          },
          backgroundColor: Colors.teal,
          selectedItemColor: Colors.yellow,
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Colors.red,
                icon: Icon(Icons.home),
                label: "Home"),
            BottomNavigationBarItem(
                backgroundColor: Colors.green,
                icon: Icon(Icons.favorite),
                label: 'Favorite'),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Account'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          ],
        ),
      ),
      body: Center(
        child: screen[index],
      ),
    );
  }
}
