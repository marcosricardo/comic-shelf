import 'package:flutter/material.dart';
import './pages/home/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Comic shelf',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Home()
    );
  }
}

