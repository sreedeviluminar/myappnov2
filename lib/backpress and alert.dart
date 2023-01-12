import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Alert_with_backperss(),
  ));
}

class Alert_with_backperss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<bool> showAlert() async {
      return await showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: const Text('Exit!!!'),
                content: const Text('Do You want to Exit??'),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop(false);
                      },
                      child: const Text('NO')),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop(true);
                      },
                      child: const Text('YES'))
                ],
              ));
    }

    return WillPopScope(
      onWillPop: showAlert,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Alert'),
        ),
        body: const Center(
          child: Text('Press Back Button To Exit'),
        ),
      ),
    );
  }
}
