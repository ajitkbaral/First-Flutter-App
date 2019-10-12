import "package:flutter/material.dart";
import 'package:my_app/app_screens/home.dart';
import 'package:my_app/stateful_widgets/favorite_city.dart';

void main() => runApp(MyFlutterApp());

class MyFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Container",
      // home: Home()
      home: FavoriteCity()
    );
  }

}