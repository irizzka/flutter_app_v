import 'package:flutter/material.dart';
import 'package:flutter_app_v/pages/my_home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter  Samsung',
      theme: ThemeData(
        primarySwatch: Colors.orange,

        textTheme: TextTheme(
          display3: TextStyle(
            color: Colors.black.withOpacity(0.5),
            fontSize: 18
          ),
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



