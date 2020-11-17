import 'package:flutter/material.dart';
import 'package:park_andorra/src/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Park Andorra', debugShowCheckedModeBanner: false, home: Home());
  }
}
