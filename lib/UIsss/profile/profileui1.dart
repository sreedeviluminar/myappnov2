import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: StackProfileUI(),
  ));
}

class StackProfileUI extends StatelessWidget {
  const StackProfileUI({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu_rounded),
          onPressed: () {},
        ),
        title: const Text('Profile'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_vert_rounded))
        ],
      ),
      body: SizedBox(
        height: screenHeight,
        //color: Colors.deepPurple[100],
        child: Stack(
          children: [
            SizedBox(
              height: 200,
              child: Image.network(
                'https://images.unsplash.com/photo-1554147090-e1221a04a025?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1696&q=80',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 130,
              width: screenWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.redAccent),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            CupertinoIcons.chat_bubble_text,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 72,
                        child: CircleAvatar(
                          backgroundColor: Colors.black26,
                          radius: 70,
                          backgroundImage: NetworkImage(
                              'https://avatars.githubusercontent.com/u/65507007?v=4'),
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blue),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            CupertinoIcons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 5),
                    child: Text(
                      'Arun Gopal',
                      style:
                      TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Text(
                    'Developer',
                    style: TextStyle(fontSize: 16, color: Colors.blueGrey),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
