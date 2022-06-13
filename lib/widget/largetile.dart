import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class LargeTile extends StatefulWidget {
  static String id = 'largetile';
  const LargeTile({Key? key}) : super(key: key);

  @override
  _LargeTileState createState() => _LargeTileState();
}

class _LargeTileState extends State<LargeTile> {
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: LargeTileWidget(),
      ),
    );
  }
}

class LargeTileWidget extends StatelessWidget {
  const LargeTileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 20, left: 6, right: 6),
      height: 370,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        color: Colors.grey[800],
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white54,
            ),
            padding: EdgeInsets.all(5),
            child: Image.asset('images/home.jpg', height: 180,),

          ),
          //Text('Golden Jublilee Hostel', style: TextStyle(color: Colors.white, fontSize: 20),),
          Container(
            padding: EdgeInsets.all(18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.favorite),
                Icon(Icons.phone),
                Icon(Icons.verified),
                Icon(Icons.person)
              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.grey,
            child: ListTile(
              leading: Icon(Icons.home, size: 44,),
              title: Text('GOLDEN JUBILEE HOSTEL'),
              subtitle: Text('near karicode TKM college'),
            ),
          ),
        ],
      ),
    );
  }
}
