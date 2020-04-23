import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          alignment: Alignment.center,
          color: Colors.deepPurple,
          padding: EdgeInsets.only(left: 10.0,top: 40.0),
          //width: 200.0,
          //height: 100.0,
          //margin: EdgeInsets.all(15.0),
          //padding: EdgeInsets.all(15.0),
          //margin: EdgeInsets.only(right : 15.0,left: 15.0,top: 15.0,bottom: 15.0),
          //padding: EdgeInsets.only(right : 15.0,left: 15.0,top: 15.0,bottom: 15.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    ////same as wrap_content in android
                    child: Text(
                      "Spice Jet",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 35.0,
                          fontFamily: "Raleway",
                          color: Colors.white),
                    ),
                  ),
                  Expanded(
                    //same as wrap_content in android
                    child: Text(
                      "From Mumbai to Banglore via New Delhi",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20.0,
                          fontFamily: "Raleway",
                          color: Colors.white),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    ////same as wrap_content in android
                    child: Text(
                      "Air India",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 35.0,
                          fontFamily: "Raleway",
                          color: Colors.white),
                    ),
                  ),
                  Expanded(
                    //same as wrap_content in android
                    child: Text(
                      "From Jaipur to Goa",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20.0,
                          fontFamily: "Raleway",
                          color: Colors.white),
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
