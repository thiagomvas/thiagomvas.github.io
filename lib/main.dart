import 'package:flutter/material.dart';
import 'package:portfolio/home.dart';
import 'package:portfolio/projects.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
