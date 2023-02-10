import 'package:flutter/material.dart';

class StatefulPage extends StatefulWidget {
  String? var1, var2, var3;
  int? int1;

  StatefulPage({this.var1, this.var2, this.int1, var3 = "hello"});

  //Constructor for this class, if you use {} then you have mention
  //parameter when you call this class like StateLessPage(var1:"hello", var2:"abc", int1:12);
  //var3 is optional parameter, by default its value is "Hello";
  //if you don't use {} braces then call class like StateLessPage("hello", "abc", 12);

  @override
  State<StatefulWidget> createState() {
    return StatefulPagestate();
  }
}

class StatefulPagestate extends State<StatefulPage> {
  @override
  Widget build(BuildContext context) {
    String? var1 = widget.var1;
    //use widget.var1 to get values from main class

    return Scaffold(
      appBar: AppBar(title: Text("Statefull Page")),
      body: Container(
          height: 300,
          child: Center(
            child: Text("Var1 = $var1 , Var2 =  ${widget.var2}"),
            //set the values in Text() widget
          )),
    );
  }
}
