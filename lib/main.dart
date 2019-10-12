import "package:flutter/material.dart";
import 'package:my_app/app_screens/home.dart';

void main() => runApp(MyFlutterApp());

class MyFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Container",
      home: Home()
    );
  }

}