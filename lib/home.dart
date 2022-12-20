import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: Column(
          children: [
            const Center(
                child: Text(
              "LoginPage",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            )),
             Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter User Name",
                    labelText: "USERNAME",
                    prefixIcon: Icon(Icons.account_box_sharp),
                    border: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(20),
                    )),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.visibility_off),
                    suffixIcon: Icon(Icons.visibility_outlined),
                    hintText: "Enter Password",
                    labelText: "PASSWORD",
                    border: OutlineInputBorder()),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                      msg: "This is Center Short Toast",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0);
                },
                child: const Text("Login")),
           const SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {},
                child: const Text("Not A User?  Register Here"))
          ],
        ));
  }
}
