import 'package:flutter/material.dart';
import 'package:myappnov2/pass%20data%20bet%20screen/dummydata.dart';

import 'product2.dart';

void main() {
  runApp( MaterialApp(
    home: ProductScreen(),
    routes: {
      "secondone": (context) => Productlist(),
    },
  ));
}

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: dummyproducts.map((product) {
          return TextButton(
              onPressed: ()=> gotonext(context, product["id"]),
              child: Text("${product["name"]}"));
        }).toList(),
      ),
    );
  }

void gotonext(BuildContext context, product) {
    Navigator.of(context).pushNamed("secondone", arguments: product);
  }
}
