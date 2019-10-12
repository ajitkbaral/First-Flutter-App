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
          ),
          FoodBookButton(),
          Expanded(
            child: getListView(),
          )
        ],
      )
      
    );
  }
}

//Create a data source for list view

List<String> getListElements() {
  var items = List<String>.generate(100, (counter)=>"Item $counter");
  return items;
}

Widget getListView() {
  var listItems = getListElements();

  var listView = ListView.builder(
    itemCount: listItems.length,
    itemBuilder: (context, index) {
      return ListTile(
        title: Text(listItems[index]),
        onTap: () {
          debugPrint('$index is pressed');
        },
      );
    },
  );

  return listView;
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

class FoodBookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      height: 50.0,
      margin: EdgeInsets.all(30.0),
      child: RaisedButton(
        color: Colors.black,
        child: Text(
          "Book Food",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0
          ),
        ),
        elevation: 6.0,
        onPressed: () => bookFood(context),
      ),
    );
  }

  void bookFood(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Book a food"),
      content: Text("Have a happy meal"),
      );
    
    showDialog(
      context: context,
      builder: (BuildContext context) => alertDialog
    );

  }
    
}
  