import 'dart:math';

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.lightBlueAccent,//color of app
      child: Center(//to center widget on screen
        child: Text(
          generateLuckNumber(),
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white,fontSize: 30.0),//apply style to the text
        ),
      ),
    );
  }

  String generateLuckNumber()
  {
    var random = Random();
    int luckyNumber = random.nextInt(10);
    return "Your lucky number is $luckyNumber";
  }
}