import 'package:flutter/material.dart';
import 'package:findmyhome/lists/list_view_home.dart';

class Lists extends StatefulWidget {
  static String id = 'lists';
  const Lists({Key? key}) : super(key: key);

  @override
  _ListsState createState() => _ListsState();
}

class _ListsState extends State<Lists> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: Column(
          children: <Widget>[
            Container(

              child: Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      IconButton(icon: Icon(Icons.home), color: Colors.black45, onPressed: (){print("clicked on ac");},),
                      IconButton(icon: Icon(Icons.map), onPressed: (){print("clicked on ac");},),
                      IconButton(icon: Icon(Icons.landscape), onPressed: (){print("clicked on ac");},),
                      IconButton(icon: Icon(Icons.person), onPressed: (){print("clicked on ac");},),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: TaskListHome(),
            ),
          ],
        ),
      ),
    );
  }
}

