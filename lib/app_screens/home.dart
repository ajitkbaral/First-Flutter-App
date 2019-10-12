import "package:flutter/material.dart";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Container"),
      ),
      body: Container(
        alignment: Alignment.topRight,
        color: Colors.purple,
        child: Text(
          "This is the text",
          style: TextStyle(
            color: Colors.white,
            fontSize: 40.0
          ),
        ),
      )
    );
  }

}