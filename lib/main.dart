//this is the liabrary which contain all material widgets
import 'package:flutter/material.dart';

//declaire the main method : entry point of our app
void main() {
    //purpose of this method is inflate the widgets and attach to the screen
    //it will show whatever we pass parameter
    runApp(
        Center(//to center widget on screen
            child: Text(
                "Hello Flutter",
                textDirection: TextDirection.ltr
            ),
        )
    );
}