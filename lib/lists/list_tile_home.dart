import 'package:flutter/material.dart';

class HomeListTile extends StatelessWidget {
  const HomeListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(top: 10, right: 15, left: 20),
      leading: Image.asset(
        'images/home.jpg',
      ),
      title: Text('Golden Palace', style: TextStyle(color: Colors.black45, fontSize: 20),),
      subtitle: Text('kollam-town/ karicode near railway station', style: TextStyle(color: Colors.grey[800], fontSize: 12),),
      trailing: Icon(Icons.arrow_forward_ios, color: Colors.black45, size: 12,),
      focusColor: Colors.grey[800],
      tileColor: Colors.lightBlueAccent,
      onTap: (){
        print('open details');
      },
    );
  }
}