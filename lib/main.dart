import 'package:findmyhome/screen/home/homescreen.dart';
import 'package:findmyhome/screen/learnscreen/logindemo.dart';
import 'package:findmyhome/screen/login/reallogin.dart';
import 'package:findmyhome/screen/login/signup.dart';
import 'package:findmyhome/widget/largetile.dart';
import 'package:flutter/material.dart';
import 'screen/login/login.dart';
import 'screen/listscreen/list.dart';
import 'screen/home_open_screen/homeopen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.grey[900],
      ),
      //initialRoute: WelcomeScreen.id,
      //initialRoute: HomeScreen.id,
      //initialRoute: ScreenTest.id,
      //initialRoute: HabitCategory.id,
      //initialRoute: EvaluateHow.id,
      //initialRoute: TakeName.id,
      //initialRoute: HowOften.id,
      initialRoute: HomeScreen.id,
      //initialRoute: LoginScreen.id,

      routes: {
        Lists.id : (context) => Lists(),
        LoginScreen.id : (context) => LoginScreen(),
        LargeTile.id : (context) => LargeTile(),
        HomeOpen.id : (context) => HomeOpen(),
        LoginScreenone.id : (context) => LoginScreenone(),
        RealLogin.id : (context) => RealLogin(),
        SignUpScreen.id : (context) => SignUpScreen(),
        HomeScreen.id : (context) => HomeScreen(),
      },
    );
  }
}
