import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_v/models/Dish.dart';
import 'package:flutter_app_v/widgets/AboutDesc.dart';
import 'package:flutter_app_v/widgets/ItemBtn.dart';

class TestLayoutBuilder extends StatelessWidget {
  final Dish dish;

  TestLayoutBuilder(this.dish);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LayoutBuilder'),
      ),
      body: LayoutBuilder(
        builder: (context, constrains) {
          return Center(
            child: Stack(
              children: <Widget>[
                Container(
                  height: constrains.maxHeight * 0.7,
                  width: constrains.maxWidth * 0.8,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: new LinearGradient(
                              colors: [
                            Colors.red.withOpacity(0.9),
                            Colors.orange.withOpacity(0.9),
                          ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter)),
                      margin: EdgeInsets.only(top: constrains.maxWidth * 0.2),
                      padding: EdgeInsets.symmetric(
                          horizontal: constrains.maxWidth * 0.035),
                      height: constrains.maxHeight * 0.8,
                      width: constrains.maxWidth * 0.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text('| ${dish.country}'),
                          Text(
                            dish.title,
                            style: Theme.of(context).textTheme.title,
                          ),
                          Text(dish.description),
                          Row(
                            children: <Widget>[
                              AboutDesc(
                                child: Icon(Icons.alarm),
                                text: '28 min',
                              ),
                              Spacer(),
                              AboutDesc(
                                child: Icon(Icons.format_align_right),
                                text: '3 Ing',
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              ItemBtn(
                                height: constrains.maxWidth * 0.13,
                                width: constrains.maxWidth * 0.13,
                                child: Icon(Icons.add),
                                //  addDishF: addDish,
                                dishTitle: dish.title,
                              ),
                              ItemBtn(
                                dishTitle: dish.title,
                                //  addDishF: viewRecipe,
                                height: constrains.maxWidth * 0.13,
                                //  width: 180,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: constrains.maxWidth * 0.07),
                                  child: Text(
                                    'View Recipe',
                                    style: Theme.of(context).textTheme.display1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: constrains.maxWidth * 0.02,
                  child: Container(
                    width: constrains.maxWidth * 0.4,
                    height: constrains.maxHeight * 0.20,
                    child: Image.asset(dish.imageUrl),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
