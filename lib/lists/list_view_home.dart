import 'package:flutter/material.dart';
import 'list_tile_home.dart';
import 'package:findmyhome/widget/largetile.dart';

class TaskListHome extends StatelessWidget {
  const TaskListHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10)),
        color: Colors.white54,
      ),
      padding: EdgeInsets.only(top: 40),
      child: ListView(
        children: <Widget>[
          LargeTileWidget(),
          LargeTileWidget(),
          LargeTileWidget(),
        ],
      ),
    );
  }
}