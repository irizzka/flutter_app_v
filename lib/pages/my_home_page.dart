import 'package:flutter/material.dart';
import 'package:flutter_app_v/models/Dish.dart';
import 'package:flutter_app_v/widgets/main_btm.dart';
import 'package:flutter_app_v/widgets/main_item.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  List<Dish> _stabList = [
    Dish(country: 'Chinese',title: 'Hot & Prawn Noodles', description: 'Loren ipsum dolar sit amen,'
        'cons ectetur adipistingelit, set doesie mod temor incidid unit uno labarret dalore magna aliqua ua.',
      imageUrl: 'assets/images/noodle.png',
      ingredients: ['element_1', 'element_2', 'element_3'],
      timeForPrepear: 20,),

    Dish(country: 'Chinese',title: 'BHG Bistro', description: 'Loren ipsum dolar sit amen,'
        'cons ectetur adipistingelit, set doesie mod temor incidid unit uno labarret dalore magna aliqua ua.',
      imageUrl: 'assets/images/bhg_bistro.png',
      ingredients: ['element_1', 'element_2', 'element_3', 'element_4', 'element_5', 'element_6'],
      timeForPrepear: 34,),

    Dish(country: 'Italy',title: 'Italy Noodles', description: 'Loren ipsum dolar sit amen,'
        'cons ectetur adipistingelit, set doesie mod temor incidid unit uno labarret dalore magna aliqua ua.',
      imageUrl: 'assets/images/noodle_2.png',
      ingredients: ['element_1', 'element_2', 'element_3', 'element_4'],
      timeForPrepear: 17,),
  ];


  void _addDish(String title) {
    print('dish $title');
  }

  void _viewRecipe(String title) {
    print('viewRecipe of $title');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          widget.title,
          style: TextStyle(),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
         //  height: 800,
            child: ListView.builder(itemBuilder: (ctx, index){
              return Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: MainItem(dish: _stabList[index], addDish: _addDish,viewRecipe: _viewRecipe,));
            },
            itemCount: _stabList.length,
            scrollDirection:Axis.horizontal,),
          ),
          MainBtm(stabList: _stabList),
        ],
      ),
    );
  }
}




