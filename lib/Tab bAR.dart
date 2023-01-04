import 'package:flutter/material.dart';

import 'List with Builder.dart';
import 'ListPage.dart';

void main() {
  runApp(MaterialApp(
    home: MyTab(),
    theme: ThemeData(
      colorScheme: ColorScheme.fromSwatch().copyWith(primary: Color(0xff2e7d32))
    ),
    debugShowCheckedModeBanner: false,));
}

class MyTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return DefaultTabController(
        length: 4,
      child: Scaffold(
       appBar: AppBar(
         title:Text("My Tab Bar"),
         actions:  [
           Icon(Icons.camera_alt),
           SizedBox(width: 20,),
           Icon(Icons.search),
           PopupMenuButton(itemBuilder: (context){
             return[
               PopupMenuItem(child: Text("Newgroup")),
               PopupMenuItem(child: Text("NewBroadcast")),
               PopupMenuItem(child: Text("Settings")),
             ];
           })
         ],
         bottom:   TabBar(
           labelPadding: EdgeInsets.zero,
           isScrollable: true,
           // unselectedLabelColor: Colors.yellow,
           indicatorSize: TabBarIndicatorSize.label,
           //   indicator: BoxDecoration( ) ,
           // indicatorColor: Colors.black,
           tabs:[
             SizedBox(
               width: MediaQuery.of(context).size.width * .1,
               child: Tab(icon: Icon(Icons.people,size: 30,),),),
             SizedBox(
                 width: MediaQuery.of(context).size.width*.3,
                 child: Tab(text: "Chats")),
             SizedBox(
                 width: MediaQuery.of(context).size.width*.3,
                 child: Tab(text: "Status")),
             SizedBox(
                 width: MediaQuery.of(context).size.width*.3,
                 child: Tab(text: "Call"))
           ]) ,
       ),
       body:  TabBarView(
         children: [
              const Center(child: Text("Community"),),
              const Center(child: Text("Chats"),),
              List_with_Builder(),
              ListPage(),

         ],

       ),
     )
     );
  }

}