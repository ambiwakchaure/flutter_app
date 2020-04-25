import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Stateful App Example",
    home: FavoriteCity(),
  ));
}

class FavoriteCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavoriteCityState();
  }
}

class _FavoriteCityState extends State<FavoriteCity> {
  String nameCity = "";
  var _currencies = ["Rupees", "Dollar", "Pounds", "Others"];
  var _currentItemSelecte = "Rupees";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful App Example"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String userInput) {
                setState(() {
                  nameCity = userInput;
                });
              },
              /*onChanged: (String userInput) {
                setState(() {
                  nameCity = userInput;
                });
              },*/
            ),
            DropdownButton<String>(
              items: _currencies.map((String dropDownStringItem) {
                return DropdownMenuItem<String>(
                  value: dropDownStringItem,
                  child: Text(dropDownStringItem),
                );
              }).toList(),
              onChanged: (String newValueSelected) =>
                  _onDropDownValueSelected(newValueSelected),
              value: _currentItemSelecte,
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Text("Your bext city is $nameCity",
                  style: TextStyle(fontSize: 20.0)),
            )
          ],
        ),
      ),
    );
  }

  void _onDropDownValueSelected(String newValueSelected) {
    setState(() {
      this._currentItemSelecte = newValueSelected;
    });
  }
}
