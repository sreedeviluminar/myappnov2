import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'Staggered Grid.dart';

void main() {
  runApp(MaterialApp(
    home: StaggeredGridView2(),
  ));
}

class StaggeredGridView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: [
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Customchild(
              iconData: Icons.add,
              bgcolor: Colors.red,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: Customchild(
              iconData: Icons.add,
              bgcolor: Colors.red,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Customchild(
              iconData: Icons.add,
              bgcolor: Colors.red,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Customchild(
              iconData: Icons.add,
              bgcolor: Colors.red,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 4,
            mainAxisCellCount: 2,
            child: Customchild(
              iconData: Icons.add,
              bgcolor: Colors.red,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Customchild(
              iconData: Icons.add,
              bgcolor: Colors.red,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: Customchild(
              iconData: Icons.add,
              bgcolor: Colors.red,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Customchild(
              iconData: Icons.add,
              bgcolor: Colors.red,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Customchild(
              iconData: Icons.add,
              bgcolor: Colors.red,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 4,
            mainAxisCellCount: 2,
            child: Customchild(
              iconData: Icons.add,
              bgcolor: Colors.red,
            ),
          ),
        ],
      ),
    ));
  }
}
