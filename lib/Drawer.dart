import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NavDrawer(),
  ));
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer"),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.white),
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: const Text("John David",style: TextStyle(color: Colors.black),),
                accountEmail: const Text("johndavid@gmail.com",style: TextStyle(color: Colors.black)),
                currentAccountPicture: GestureDetector(
                  onTap: () {
                    print("Current profile");
                  },
                  child: const CircleAvatar(
                    backgroundImage: AssetImage("assets/icons/babydog.png"),
                  ),
                ),
                otherAccountsPictures: const [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/icons/tiger.png"),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/imag.jpg"),
                  ),
                ],
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit:BoxFit.cover,
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1543857778-c4a1a3e0b2eb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=410&q=80")),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              Divider(
                thickness: 2,
              ),
              const ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
