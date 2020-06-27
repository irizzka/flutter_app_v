import 'package:flutter/cupertino.dart';

class Dish{
  final int id;
  final String country;
  final String title;
  final String imageUrl;
  final String description;
  final int timeForPrepear;
  final List<String> ingredients;

  Dish({this.id, @required this.country, @required this.title,@required this.imageUrl, @required this.description, @required this.timeForPrepear,
     @required this.ingredients});

}