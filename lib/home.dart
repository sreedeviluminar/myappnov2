import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("LOGIN PAGE"),
      ),
      body: Column(
        children: [
          const Text(
            "LOGIN PAGE",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30, color: Colors.green),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_box_sharp),
                  hintText: "Enter username",
                  labelText: "USERNAME",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: TextField(
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.visibility_off),
                  suffixIcon: Icon(Icons.visibility),
                  hintText: "Enter password",
                  labelText: "PASSWORD",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          ElevatedButton(onPressed: () {
            Fluttertoast.showToast(
                msg: "Check ur password",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                //timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0
            );

          }, child: Text("LOGIN")),
          const SizedBox(
            height: 20 ),
          TextButton(onPressed: () {}, child: const Text('Not a User, Register Here'))
        ],
      ),
    );
  }
}
