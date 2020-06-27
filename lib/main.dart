import 'package:flutter/material.dart';
import 'package:flutter_app_v/pages/MyHomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter  Samsung',
      theme: ThemeData(
        primarySwatch: Colors.blue,

        textTheme: TextTheme(
          display1: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color:  Colors.black87),
          body1: TextStyle(height: 1.5, fontSize: 18 , ),
          caption: TextStyle(
            fontSize: 16
          ),
          title: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
            wordSpacing: -4,
            letterSpacing: -1,
            height: 0.85,
          ),
        )
      ),
      home: MyHomePage(title: 'Flutter Food App'),
    );
  }
}



