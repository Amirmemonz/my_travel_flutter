import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/homepage.dart';
import 'screens/introPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => IntroPage(),
        '/homepage' : (context) => HomePage()
      },
      title: 'Welcome to Flutter',
    );
  }
}

