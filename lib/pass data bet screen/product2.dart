import 'package:flutter/material.dart';
import 'package:myappnov2/pass%20data%20bet%20screen/dummydata.dart';

class Productlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // fetch the id from the previous page
    final productId = ModalRoute.of(context)?.settings.arguments;
    //check the id found in the given list if found fetch all the values corresponding to that id
    final product = dummyproducts.firstWhere((data) => data["id"] == productId);

    return Scaffold(
      appBar: AppBar(
        title: Text('Products Details'),
      ),
      body: Padding(padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text("${product["id"].toString()}"),
            Text("${product["name"]}"),
            Text("${product["description"]}")
          ],
        ),

      )
      ,
    );
  }
}