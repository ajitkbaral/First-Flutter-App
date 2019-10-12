import "package:flutter/material.dart";
import 'package:my_app/app_screens/first_screen.dart';

void main() => runApp(MyFlutterApp());

class MyFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("This is the flutter application"),
        ),
        body: FirstScreen()
      )
    );
  }
}