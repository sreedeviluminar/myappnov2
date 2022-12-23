import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ListPage()));
}

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("MY Pet Store")),
      body: ListView(
        children:   [
          Card(
            //elevation: 30,
            shadowColor: Colors.red,
            color: Colors.green,
            child: ListTile(
              title: Text("PetStore 1"),
              subtitle: Text("description"),
              leading: const CircleAvatar(
                  backgroundImage:NetworkImage("https://static01.nyt.com/images/2020/05/09/multimedia/09sp-ai-pets-promo/09sp-ai-pets-promo-mediumSquareAt3X.jpg")),
              trailing: Wrap(
                children: const [
                  Icon(Icons.message),
                  SizedBox(width: 20,),
                  Icon(Icons.phone),
                ],
              ),
            ),
          ),
          const ListTile(
            title: Text("PetStore 1"),
            subtitle: Text("description"),
            leading: Image(image: NetworkImage("https://static01.nyt.com/images/2020/05/09/multimedia/09sp-ai-pets-promo/09sp-ai-pets-promo-mediumSquareAt3X.jpg")),
            trailing: Icon(Icons.phone),
          ),
          ListTile(
            title: Text("PetStore 1"),
            subtitle: Text("description"),
            leading: Image(image: NetworkImage("https://static01.nyt.com/images/2020/05/09/multimedia/09sp-ai-pets-promo/09sp-ai-pets-promo-mediumSquareAt3X.jpg")),
            trailing: Icon(Icons.phone),
          ),
          ListTile(
            title: Text("PetStore 1"),
            subtitle: Text("description"),
            leading: Image(image: NetworkImage("https://static01.nyt.com/images/2020/05/09/multimedia/09sp-ai-pets-promo/09sp-ai-pets-promo-mediumSquareAt3X.jpg")),
            trailing: Icon(Icons.phone),
          ),
          ListTile(
            title: Text("PetStore 1"),
            subtitle: Text("description"),
            leading: Image(image: NetworkImage("https://static01.nyt.com/images/2020/05/09/multimedia/09sp-ai-pets-promo/09sp-ai-pets-promo-mediumSquareAt3X.jpg")),
            trailing: Icon(Icons.phone),
          ),
        ],
      ),
    );
  }
}
