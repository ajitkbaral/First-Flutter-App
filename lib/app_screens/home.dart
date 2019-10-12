import "package:flutter/material.dart";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Container"),
      ),
      body: Column(
        children: <Widget>[
          FoodImageAsset(),
          Text(
            "This is the image of the food",
            style: TextStyle(fontSize: 30.0),
          )
        ],
      )
      
    );
  }
}

class FoodImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Image image = Image(
      image: AssetImage('images/image1.jpg')
      );
    return Container(
      child: image,
    );
  }
  
}