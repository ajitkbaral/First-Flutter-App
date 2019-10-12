import "package:flutter/material.dart";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Container"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10.0),
          alignment: Alignment.center,
          color: Colors.purple,
          child: Column(
            children: <Widget>[
              Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Text -1",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0
                    )
                  )
                ),
                Expanded(
                  child: Text(
                    "Text 0",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0
                    )
                  )
                ),                
              ],
            ),
            Row (
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Text 1",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0
                    )
                  )
                ),
                Expanded(
                  child: Text(
                    "Text 2",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0
                    )
                  )
                ),
                Expanded(
                  child: Text(
                    "Text 3",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0
                    )
                  )
                ),
                Expanded(
                  child: Text(
                    "Text 4",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0
                    )
                  )
                )
              ],
            )
            ],
          )
        )
      )
    );
  }

}