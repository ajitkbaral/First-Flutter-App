import "package:flutter/material.dart";

class FavoriteCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavoriteCityState();
  }
}

class _FavoriteCityState extends State<FavoriteCity> {
  String nameCity = "";

  @override
  Widget build(BuildContext context) {
    debugPrint("Creates the widget");
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful widget"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (userInput) {
                setState(() {
                  debugPrint("Destroys the previously created widget and recreate the same widget with changes");
                 nameCity = userInput;
                });
              },
              onChanged: (userInput) {
                setState(() {
                  debugPrint("On any change recreates the widget");
                 nameCity = userInput;
                });
              },
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                "Your next city is $nameCity",
                style: TextStyle(
                  fontSize: 20.0
                ),
              ),
            )
          ],
        ),
      )
    );
  }

}