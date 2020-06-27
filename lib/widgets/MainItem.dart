import 'package:flutter/material.dart';
import 'package:flutter_app_v/models/Dish.dart';
import 'package:flutter_app_v/widgets/AboutDesc.dart';
import 'package:flutter_app_v/widgets/ItemBtn.dart';

class MainItem extends StatelessWidget {
  final Dish dish;
  final Function addDish;
  final Function viewRecipe;

  const MainItem({
    @required this.dish,
    @required this.addDish,
    @required this.viewRecipe,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        return Container(
          color: Colors.white,
          //  padding: EdgeInsets.only(top: 40),
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Stack(
            alignment: Alignment.topRight,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 55),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        gradient: new LinearGradient(
                            colors: [
                          Colors.red.withOpacity(0.9),
                          Colors.orange.withOpacity(0.9),
                        ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            //  height: 70,
                            height: constrains.maxHeight * 0.1,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 20.0),
                            child: Text(
                              '| ${dish.country}',
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Text(dish.title,
                                style: Theme.of(context).textTheme.title),
                          ),
                          Text(
                            dish.description,
                            style: Theme.of(context).textTheme.body1,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                AboutDesc(
                                  child: Icon(Icons.alarm),
                                  text: '${dish.timeForPrepear} min',
                                ),
                                AboutDesc(
                                  child: Icon(Icons.format_align_right),
                                  text: '${dish.ingredients.length} Ing',
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              ItemBtn(
                                height: 60,
                                width: 60,
                                child: Icon(Icons.add),
                                addDishF: addDish,
                                dishTitle: dish.title,
                              ),
                              ItemBtn(
                                dishTitle: dish.title,
                                addDishF: viewRecipe,
                                height: 60,
                              //  width: 180,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
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
              Container(
                //  width: 200,
                //  height: 200,
                width: constrains.maxWidth * 0.6,
                height: constrains.maxHeight * 0.30,
                child: Image.asset(dish.imageUrl),
              ),
            ],
          ),
        );
      },
    );
  }
}
