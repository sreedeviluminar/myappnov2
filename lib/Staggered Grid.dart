import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

void main(){
  runApp(MaterialApp(home: StaggeredGrid1(),));
}
class StaggeredGrid1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StaggeredGridView.count(
          crossAxisCount: 4,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          staggeredTiles: const [
            StaggeredTile.count(1, 1),
            StaggeredTile.count(1, 1),
            StaggeredTile.count(2, 3),
            StaggeredTile.count(2, 4),
            StaggeredTile.count(3, 3),
            StaggeredTile.count(2, 2),
            StaggeredTile.count(2, 3),
            StaggeredTile.count(2, 1),
          ],
          children:[
            Customchild(iconData: Icons.add, bgcolor: Colors.red,),
            Customchild(iconData: Icons.ac_unit, bgcolor: Colors.green,),
            Customchild(iconData: Icons.bubble_chart, bgcolor: Colors.yellow,),
            Customchild(iconData: Icons.hearing, bgcolor: Colors.blue,),
            Customchild(iconData: Icons.share_arrival_time, bgcolor: Colors.orange,),
            Customchild(iconData: Icons.tab, bgcolor: Colors.grey,),
            Customchild(iconData: Icons.vibration, bgcolor: Colors.purple,),
            Customchild(iconData: Icons.gamepad, bgcolor: Colors.brown,),
          ]
        ),
    );
  }
}

class Customchild extends StatelessWidget{
  final Color? bgcolor;
  final IconData iconData;
//  VoidCallback onpress;

  Customchild({required this.bgcolor,required this.iconData});

  @override
  Widget build(BuildContext context) {
     return Card(
       color: bgcolor,
       child: Icon(iconData,color: Colors.white,),
     );
  }
}