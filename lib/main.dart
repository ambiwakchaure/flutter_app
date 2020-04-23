import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Exploring UI Widgets",
    home: Scaffold(
      appBar: AppBar(
          title:
              Text("Long Listview", style: TextStyle(fontFamily: 'Raleway'))),
      body: getListView(),
    ),
  ));
}

List<String> getListElements() {
  var items = List<String>.generate(1000, (counter) => "Items $counter");
  return items;
}

Widget getListView() {
  var listItems = getListElements();
  var listView = ListView.builder(itemBuilder: (context, index) {
    //item builder loads only visible element into the memory other hides it so its a memory efficient
    return ListTile(
      trailing: Icon(Icons.arrow_back),
      leading: Icon(Icons.landscape),
      title: Text(listItems[index], style: TextStyle(fontFamily: 'Raleway')),
    );
  });
  return listView;
}
