import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:ExpansionEX()));
}

class ExpansionEX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Expansion Tile'),),
      body: const ExpansionTile(
        title: Text('Colors'),
        subtitle: Text('Expand This Tile'),
        children: [
          ListTile(
            leading:CircleAvatar(backgroundColor: Colors.red,),
            title: Text('Red'),
          ),
          ListTile(
            leading:CircleAvatar(backgroundColor: Colors.green,),
            title: Text('Green'),
          ),
          ListTile(
            leading:CircleAvatar(backgroundColor: Colors.blue,),
            title: Text('Blue'),
          ),
          ListTile(
            leading:CircleAvatar(backgroundColor: Colors.yellow,),
            title: Text('Yellow'),
          ),
          ListTile(
            leading:CircleAvatar(backgroundColor: Colors.purple,),
            title: Text('Purple'),
          ),
        ],),
    );
  }
}