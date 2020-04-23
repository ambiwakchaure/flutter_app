//this is the liabrary which contain all material widgets
import 'package:flutter/material.dart';
//declaire the main method : entry point of our app
void main() {
    //purpose of this method is inflate the widgets and attach to the screen
    //it will show whatever we pass parameter
    runApp(
        MaterialApp( // latest version of dart so new keyword is optional
            title: "My Flutter App",//app name
            home: Scaffold(
                appBar: AppBar(title: Text("My First App screen"),),
                body: Material(
                    color: Colors.lightBlueAccent,//color of app
                    child: Center(//to center widget on screen
                        child: Text(
                            "Hello Flutter",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(color: Colors.white,fontSize: 40.0),//apply style to the text
                        ),
                    ),
                ),
            )//it is allow to place app bar on top of the screen
        )
    );
}