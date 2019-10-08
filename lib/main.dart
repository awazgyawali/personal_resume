import 'package:flutter/material.dart';
import 'package:resume/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aawaz Gyawali',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.red,
      ),
      home: HomeScreen(),
    );
  }
}
