//this is the liabrary which contain all material widgets
import 'package:flutter/material.dart';
import './app_screens/first_screen.dart';
//declaire the main method : entry point of our app
void main() => runApp(MyFlutterApp());// function expression : In dart if we have 1 line of code for calling so we use
    //=>
    //purpose of this method is inflate the widgets and attach to the screen
    //it will show whatever we pass parameter

//StatelessWidget : The widget that will be return in this class will not contain any state
//and it will never change in future
class MyFlutterApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp( // latest version of dart so new keyword is optional
      debugShowCheckedModeBanner: false,//remove debug tag from screen
        title: "My Flutter App",//app name
        home: Scaffold(
          appBar: AppBar(title: Text("My First App screen"),),
          body: FirstScreen(),
        )//it is allow to place app bar on top of the screen
    );
  }
}