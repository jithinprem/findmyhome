import 'package:findmyhome/screen/learnscreen/logindemo.dart';
import 'package:findmyhome/screen/login/reallogin.dart';
import 'package:findmyhome/screen/login/signup.dart';
import 'package:flutter/material.dart';
import 'package:findmyhome/constfile/consts.dart';
import 'package:flutter/rendering.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: Column(
          children: <Widget>[
            Container(
              padding:
                  EdgeInsets.only(top: 60, bottom: 60, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        child: Image.asset('images/logo.png'),
                        radius: 50,
                        backgroundColor: Colors.blueGrey[900],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'G E T H O M E',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'GochiHand',
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '\t\t\tHey there,\n\n\n',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Readex',
                        fontSize: 15),
                  ),
                  Text(
                    '\nWelcome\n to Gethome!',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Readex',
                        fontSize: 23),
                  ),
                ],
              ),
            ),
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  height: 220,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Text(
                          'Log in/Sign up to continue',
                          style: TextStyle(
                              color: Colors.black45,
                              fontFamily: 'Readex',
                              fontSize: 20),
                        ),
                      ),
                      // space for
                      ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(top: 18),
                          child: Icon(
                            Icons.verified_rounded,
                            color: Colors.lime,
                            size: 20,
                          ),
                        ),
                        title: Text(
                          'explore sellers',
                          style:
                              TextStyle(color: Colors.black45, fontSize: 10),
                        ),
                        subtitle: Text(
                          'trusted verified sellers',
                          style: TextStyle(color: Colors.black, fontSize: 11),
                        ),
                        trailing: Icon(Icons.verified_user_rounded, color: Colors.grey,),
                      ),
                      ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(top: 18),
                          child: Icon(
                            Icons.verified_rounded,
                            color: Colors.lime,
                            size: 20,
                          ),
                        ),
                        title: Text(
                          'find rente',
                          style:
                              TextStyle(color: Colors.black45, fontSize: 10),
                        ),
                        subtitle: Text(
                          'easy and effortlessly',
                          style: TextStyle(color: Colors.black, fontSize: 11),
                        ),
                        trailing: Icon(Icons.search, color: Colors.grey,),
                      ),
                    ],
                  ),
                ),
                buildButton(margin: EdgeInsets.only(top: 170), text: 'Login', context: this.context, id: RealLogin.id),
                buildButton(margin: EdgeInsets.only(top: 240), text: 'SignUp', context : this.context, id: SignUpScreen.id),
              ],
            ),
            Text(
              '\n\n\nThere is no place like Home',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Pacifico'
              ),
            ),
          ],
        ),
      ),
    );

  }
}
Widget buildButton(
    {
      required margin,
      required text,
      required context,
      required  id,
    }
    )=>Container(
  child: Container(
    margin: margin,
    height: 80,
    width: double.infinity,
    padding: const EdgeInsets.only(top: 25, left: 24, right: 24),
    child: RaisedButton(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      color: Color(0xFFEFE7E2),
      onPressed: () => Navigator.pushNamed(context, id),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w200,
          color: Colors.grey[700],
          fontFamily: 'Readex',
        ),
      ),
    ),
  ),
);