import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.deepPurple,
        //width: 200.0,
        //height: 100.0,
        //margin: EdgeInsets.all(15.0),
        //padding: EdgeInsets.all(15.0),
        //margin: EdgeInsets.only(right : 15.0,left: 15.0,top: 15.0,bottom: 15.0),
        //padding: EdgeInsets.only(right : 15.0,left: 15.0,top: 15.0,bottom: 15.0),
        child: Text(
            "Flight",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 75.0,
              fontFamily: "Raleway",
              color: Colors.white
              //fontStyle: FontStyle.italic
            ),
        ),
      ),
    );
  }
}
