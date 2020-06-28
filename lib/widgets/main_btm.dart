import 'package:flutter/material.dart';
import 'package:flutter_app_v/models/Dish.dart';
import 'package:flutter_app_v/pages/test_layout_builder.dart';
import 'package:flutter_app_v/widgets/about_desc.dart';

class MainBtm extends StatelessWidget {
  const MainBtm({
    Key key,
    @required List<Dish> stabList,
  }) : _stabList = stabList, super(key: key);

  final List<Dish> _stabList;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => TestLayoutBuilder(_stabList[0])));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.red.withOpacity(0.8),
        ),
        margin: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
        height: 140,
        child: Container(
          padding: EdgeInsets.all(5),
          child: Row(
            children: <Widget>[
              Container(
                child: Image.asset('assets/images/bhg_bistro.png'),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric( horizontal: 20),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('| Chinese', style: TextStyle(
                            color: Colors.black.withOpacity(0.4),
                          ),),
                          Spacer(),
                          Container(
                              height: 50,
                              child: Icon(Icons.fastfood, size: 30,)),
                        ],
                      ),
                      Expanded(child: Center(
                        child: Text('Fried Crispy Chiken with sausage', style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            height: 1
                        )),
                      )),
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
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}