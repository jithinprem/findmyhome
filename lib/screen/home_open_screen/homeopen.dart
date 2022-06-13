import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:findmyhome/constfile/consts.dart';

class HomeOpen extends StatefulWidget {
  static String id = 'homeopen';
  const HomeOpen({Key? key}) : super(key: key);

  @override
  _HomeOpenState createState() => _HomeOpenState();
}

class _HomeOpenState extends State<HomeOpen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: Column(
          children: <Widget>[
            Container(
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                color: Colors.white24,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(height: 30),
                  Image.asset('images/home.jpg'),
                  Text(
                    'Golden Jubilee Hostel',
                    style: TextStyle(color: Colors.white54, fontSize: 30),
                  ),
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
                ],
              ),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: Container(
                child: ListView(
                  children: <Widget>[
                    // CarouselSlider(
                    //   options: CarouselOptions(height: 400.0),
                    //   items: [1, 2, 3, 4, 5].map((i) {
                    //     return Builder(
                    //       builder: (BuildContext context) {
                    //         return Container(
                    //             width: MediaQuery.of(context).size.width,
                    //             margin: EdgeInsets.symmetric(horizontal: 5.0),
                    //             decoration: BoxDecoration(color: Colors.white24),
                    //             child: Text(
                    //               'text $i',
                    //               style: TextStyle(fontSize: 16.0),
                    //             ));
                    //       },
                    //     );
                    //   }).toList(),
                    // ),
                    Container(
                      child: Image.asset('images/home.jpg'),
                    ),
                    Container(
                      child: Image.asset('images/home.jpg'),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
