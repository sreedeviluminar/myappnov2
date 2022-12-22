import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("MY Pet Store")),
      body: ListView(
        children:  const [
          Card(
            color: Colors.green,
            shadowColor: Colors.black,
            child: ListTile(
              title: Text("PetStore 1"),
              subtitle: Text("description"),
              leading: CircleAvatar(
                  backgroundImage:NetworkImage("https://static01.nyt.com/images/2020/05/09/multimedia/09sp-ai-pets-promo/09sp-ai-pets-promo-mediumSquareAt3X.jpg")),
              trailing: Icon(Icons.phone),
            ),
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
