import 'package:findmyhome/constfile/consts.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'homescreen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[900],
          body: Column(
            children: <Widget>[
              // this list tile has teh add property and the side three line icon
              ListTile(
                leading: Icon(
                  Icons.menu_rounded,
                  color: Colors.white,
                ),
                trailing: Text(
                  'Add Property',
                  style: TextStyle(fontFamily: 'Readex', color: Colors.white),
                ),
                tileColor: Colors.white60,
              ),

              // this stack has the home screen pic and the 4 icons
              Stack(
                children: [
                  Container(
                      height: 220,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://cdn.pixabay.com/photo/2017/09/09/18/25/living-room-2732939__340.jpg'),
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.3),
                            BlendMode.darken,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 97, top: 15),
                        child: Text(
                          'Home of your dreams, \n\t\tfrom the dream of your homes',
                          style: TextStyle(
                              fontFamily: 'Readex', color: Colors.white),
                        ),
                      )),
                  Container(
                    margin: EdgeInsets.only(left: 27, top: 200),
                    child: CircleAvatar(
                      child: Icon(
                        Icons.add_business_rounded,
                        color: Colors.grey[800],
                      ),
                      radius: 30,
                      backgroundColor: Color(0xFFEFE7E2),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 107, top: 200),
                    child: CircleAvatar(
                      child: Icon(
                        Icons.sensor_door_outlined,
                        color: Colors.grey[800],
                      ),
                      radius: 30,
                      backgroundColor: Color(0xFFEFE7E2),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 187, top: 200),
                    child: CircleAvatar(
                      child: Icon(
                        Icons.location_on_outlined,
                        color: Colors.grey[800],
                      ),
                      radius: 30,
                      backgroundColor: Color(0xFFEFE7E2),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 267, top: 200),
                    child: CircleAvatar(
                      child: Icon(
                        Icons.search_outlined,
                        color: Colors.grey[800],
                      ),
                      radius: 30,
                      backgroundColor: Color(0xFFEFE7E2),
                    ),
                  ),
                ],
              ),

              //this widget has the sliding wid, select ppt from popular cities
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    Container(
                      height: 126,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            width: 140.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://cdn.pixabay.com/photo/2016/11/22/23/38/apartment-1851201__340.jpg'),
                                colorFilter: ColorFilter.mode(
                                    Colors.white.withOpacity(0.2),
                                    BlendMode.colorDodge),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                          Container(
                            margin:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                            width: 140.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://cdn.pixabay.com/photo/2017/03/28/12/13/chairs-2181968_960_720.jpg'),
                                colorFilter: ColorFilter.mode(
                                    Colors.white.withOpacity(0.3),
                                    BlendMode.colorDodge),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                          Container(
                            margin:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                            width: 140.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://cdn.pixabay.com/photo/2016/08/26/15/06/home-1622401_960_720.jpg'),
                                colorFilter: ColorFilter.mode(
                                    Colors.white.withOpacity(0.3),
                                    BlendMode.colorDodge),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                          Container(
                            margin:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                            width: 140.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://cdn.pixabay.com/photo/2016/12/30/07/59/kitchen-1940174_960_720.jpg'),
                                colorFilter: ColorFilter.mode(
                                    Colors.white.withOpacity(0.3),
                                    BlendMode.colorDodge),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                          Container(
                            margin:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                            width: 140.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://cdn.pixabay.com/photo/2020/06/25/10/21/architecture-5339245_960_720.jpg'),
                                colorFilter: ColorFilter.mode(
                                    Colors.white.withOpacity(0.2),
                                    BlendMode.colorDodge),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Stack(
                      clipBehavior: Clip.none,
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            'Select Property from popular cities',
                            style: TextStyle(
                              fontFamily: 'Readex',
                              fontSize: 15,
                              color: Colors.grey[800],
                            ),
                          ),
                          tileColor: Color(skin),
                          leading: Icon(Icons.location_city_rounded, color: Colors.grey[800],),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 40),
                              child: CircleAvatar(
                                backgroundImage: AssetImage('images/del.jpg'),
                                radius: 30,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 40),
                              child: CircleAvatar(
                                backgroundImage: AssetImage('images/mum.jpg'),
                                radius: 30,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 40),
                              child: CircleAvatar(
                                backgroundImage: AssetImage('images/che.jpg'),
                                radius: 30,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 40),
                              child: CircleAvatar(
                                backgroundImage: AssetImage('images/koc.jpg'),
                                radius: 30,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
