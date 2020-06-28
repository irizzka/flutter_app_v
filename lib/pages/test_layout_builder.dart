import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_v/models/Dish.dart';
import 'package:flutter_app_v/widgets/about_desc.dart';
import 'package:flutter_app_v/widgets/item_btn.dart';

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
                  padding: EdgeInsets.only(top: constrains.maxHeight * 0.12),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      child: Container(
                      //  margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                            gradient: new LinearGradient(
                                colors: [
                              Colors.red.withOpacity(0.9),
                              Colors.orange.withOpacity(0.9),
                            ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter)),
                      //  margin: EdgeInsets.only(top: constrains.maxWidth * 0.2),
                        padding: EdgeInsets.symmetric(
                            horizontal: constrains.maxWidth * 0.04),
                        height: constrains.maxHeight * 0.8,
                        width: constrains.maxWidth * 0.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            SizedBox(
                              height: constrains.maxHeight * 0.03,
                            ),
                            Text('| ${dish.country}'),
                            Text(
                              dish.title,
                              style: Theme.of(context).textTheme.title.copyWith(fontSize: constrains.maxWidth * 0.1),
                            ),
                            Text(dish.description, style: Theme.of(context).textTheme.display3.copyWith(height: 1.5, fontSize: constrains.maxWidth * 0.04,
                            color: Colors.black.withOpacity(0.6)),),
                            Row(
                              children: <Widget>[
                                AboutDesc(
                                  child: Icon(Icons.alarm, color: Theme.of(context).textTheme.display3.color, size: constrains.maxHeight * 0.03,),
                                  text: '28 min',
                                ),
                                Spacer(),
                                AboutDesc(
                                  child: Icon(Icons.format_align_right, color: Theme.of(context).textTheme.display3.color,size: constrains.maxHeight * 0.03,),
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
                ),
                Positioned(
                  right: constrains.maxWidth * 0.02,
                  child: Container(
                    width: constrains.maxWidth * 0.55,
                    height: constrains.maxHeight * 0.25,
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
