import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Botmsheet(),
  ));
}

class Botmsheet extends StatelessWidget {
  void show(BuildContext context) {
    showModalBottomSheet(
        context: context,
        elevation: 3,
        builder: (context) => Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  ListTile(
                    leading: Icon(Icons.train),
                    title: Text("Train"),
                  ),
                  ListTile(leading: Icon(Icons.share), title: Text("Share")),
                  ListTile(
                      leading: Icon(Icons.info), title: Text("Information")),
                ],
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MY Bottom Sheet'),
      ),
      body: Center(
          child: GestureDetector(
        child: Text("Bottom Sheet"),
        onLongPress: () => show(context),
      )),
    );
  }
}
