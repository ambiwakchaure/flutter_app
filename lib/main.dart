import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Exploring UI Widgets",
    home: Scaffold(
      appBar: AppBar(
          title:
          Text("Basic Listview", style: TextStyle(fontFamily: 'Raleway'))),
      body: getListView(),
    ),
  ));
}

Widget getListView() {
  var listView = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape", style: TextStyle(fontFamily: 'Raleway')),
        subtitle:
        Text("Beautiful view !", style: TextStyle(fontFamily: 'Raleway')),
        trailing: Icon(Icons.wb_sunny),
        onTap: () {
          debugPrint("Landscaped tapped");
        },
      ),
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape", style: TextStyle(fontFamily: 'Raleway')),
        subtitle:
        Text("Beautiful view !", style: TextStyle(fontFamily: 'Raleway')),
        trailing: Icon(Icons.wb_sunny),
      ),
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape", style: TextStyle(fontFamily: 'Raleway')),
        subtitle:
        Text("Beautiful view !", style: TextStyle(fontFamily: 'Raleway')),
        trailing: Icon(Icons.wb_sunny),
      ),
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape", style: TextStyle(fontFamily: 'Raleway')),
        subtitle:
        Text("Beautiful view !", style: TextStyle(fontFamily: 'Raleway')),
        trailing: Icon(Icons.wb_sunny),
      ),
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape", style: TextStyle(fontFamily: 'Raleway')),
        subtitle:
        Text("Beautiful view !", style: TextStyle(fontFamily: 'Raleway')),
        trailing: Icon(Icons.wb_sunny),
      ),
      Text("Yet Another element in list",
          style: TextStyle(fontFamily: 'Raleway', height: 2.0)),
      Container(
        color: Colors.red,
        height: 50.0,
      )
    ],
  );
  return listView;
}
