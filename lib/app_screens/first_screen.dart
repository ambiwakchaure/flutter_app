import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.lightBlueAccent,//color of app
      child: Center(//to center widget on screen
        child: Text(
          "Hello Flutter",
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white,fontSize: 40.0),//apply style to the text
        ),
      ),
    );
  }
}