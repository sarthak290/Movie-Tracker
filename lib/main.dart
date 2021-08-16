import 'package:flutter/material.dart';
import 'package:movie_tracker/screens/intro_screen.dart';
import 'package:movie_tracker/screens/display.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movies Tracker',
      theme: ThemeData(
        primarySwatch: Colors.grey
      ),
      home: IntroViewsPage(),
    );
  }
}
