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
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          tooltip: "Add one more item"),
    ),
  ));
}

List<String> getListElements() {
  var items = List<String>.generate(1000, (counter) => "Items $counter");
  return items;
}

void showSnackbar(BuildContext context, String item) {
  var snackBar = SnackBar(
    content: Text("You just tapped item $item"),
    action: SnackBarAction(
        label: "UNDO",
        onPressed: () {
          //perform action
        }),
  );
  Scaffold.of(context).showSnackBar(snackBar);
}

Widget getListView() {
  var listItems = getListElements();
  var listView = ListView.builder(itemBuilder: (context, index) {
    //item builder loads only visible element into the memory other hides it so its a memory efficient
    return ListTile(
      trailing: Icon(Icons.arrow_back),
      leading: Icon(Icons.landscape),
      title: Text(listItems[index], style: TextStyle(fontFamily: 'Raleway')),
      onTap: () {
        showSnackbar(context, listItems[index]);
      },
    );
  });
  return listView;
}
