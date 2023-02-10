import 'package:flutter/material.dart';

import 'StateLessPage.dart';
import 'StatefulPage.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  String countryname = "Nepal";

  //variable to pass in another page, you can have any other datas as well
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Transfer Data to Another Page"),
            backgroundColor: Colors.redAccent),
        body: Container(
            alignment: Alignment.center, //align to center
            height: 250, //height to 250
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    child: ElevatedButton(
                  onPressed: () {
                    //onpress action for button
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return StateLessPage(
                          var1: "Kochi", var2: countryname, int1: 12);
                    })); //Navigate to another page (Stateless Page) using Navigator.push()
                    //when you use {} in constructor, then have to mention
                    //parameter name as well like var1: "Kathmandu";
                    //if {} not used, you have to use (Kathmandu, countryname, 12); like this
                  },
                  child: Text("Go to Stateless Page"),
                )),
                Container(
                    child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return StatefulPage(
                          var1: "Kathmandu", var2: countryname, int1: 12);
                    })); //Navigate to another page (Stateful page)
                  },
                  child: Text("Go to Statefull Page"),
                ))
              ],
            )));
  }
}
