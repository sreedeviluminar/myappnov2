import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: List_with_Builder(),));
}

class List_with_Builder extends StatelessWidget {

  var name = ['name1', 'name2', 'name3', 'name4', 'name5'];
  var phone = ['909789687', '09789696', '097987986', '89685875', '968757644'];
  var images = [
    "assets/icons/tiger.png",
    "assets/icons/shell.png",
    "assets/icons/babydog.png",
    "assets/icons/tiger.png",
    "assets/icons/shell.png"
  ];
  var colors = [800,600,400,200,100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text("Contact book"),),
        body: ListView.builder(
          itemCount: name.length,
            itemBuilder: (BuildContext context, index) {
              return Card(
                color: Colors.purple[colors[index]],
                child: ListTile(
                  title: Text(name[index]),
                  subtitle: Text(phone[index]),
                  leading: Image(image: AssetImage(images[index]),),
                ),);
            })
    );
  }
}
  // var datas = ['item1', 'item2', 'item3', 'item4', 'item5', 'item6', 'item7'];
  // var colors = [700,600, 500,400, 300,200, 100];
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(title: Text("LIST WITH BUILDER"),),
  //     body: ListView.builder(
  //       itemCount: datas.length,
  //         itemBuilder: (BuildContext context, int index) {
  //           return Container(
  //             height: 50,
  //             color: Colors.green[colors[index]],
  //             child: Center(child: Text(datas[index]),),
  //           );
  //         }),
  //
  //   );

//  }
//}