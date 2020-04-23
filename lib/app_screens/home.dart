import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          alignment: Alignment.center,
          color: Colors.deepPurple,
          padding: EdgeInsets.only(left: 10.0, top: 40.0),
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
              ),
              FlightImageAsset(),
              FlightBookButton()
            ],
          )),
    );
  }
}

class FlightImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/flight.png');

    Image image = Image(
      image: assetImage,
      height: 200.0,
      width: 200.0,
    );

    return Container(child: image, margin: EdgeInsets.only(top: 20.0));
  }
}

class FlightBookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
          color: Colors.deepOrange,
          child: Text(
            "Book your flight",
            style: TextStyle(
                fontSize: 20.0, color: Colors.white, fontFamily: 'Raleway'),
          ),
          elevation: 6.0,
          onPressed: () => bookFlight(context)),
      margin: EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 50.0,
    );
  }

  void bookFlight(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text(
        "Flight Booked Successfully",
        style: TextStyle(fontFamily: 'Raleway'),
      ),
      content: Text("Have a pleasant flight",
          style: TextStyle(fontFamily: 'Raleway')),
    );

    showDialog(
        context: context, builder: (BuildContext context) => alertDialog);
  }
}
