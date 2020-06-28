import 'package:flutter/material.dart';

class BurgerPage extends StatefulWidget {
  @override
  _BurgerPageState createState() => _BurgerPageState();
}

class _BurgerPageState extends State<BurgerPage> {
  int _countItems = 1;

  void _decrementCount() {
    setState(() {
      _countItems--;
    });
  }

  void _incrementCount() {
    setState(() {
      _countItems++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constrains) {
          return SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(
                  horizontal: constrains.maxWidth * 0.05,
                  vertical: constrains.maxHeight * 0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.keyboard_arrow_left),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.whatshot),
                          Text('290 Caories'),
                        ],
                      ),
                      IconButton(
                        icon: Icon(Icons.favorite_border),
                        onPressed: () {
                          print('added to favorites');
                        },
                      )
                    ],
                  ),
                  Container(
                    height: constrains.maxWidth * 0.8,
                      child: Container(
                          alignment: Alignment.center,
                          child: Image.asset('assets/images/burgers/burger1.png'))),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          onTap: _incrementCount ,
                          child: Container(
                            height: constrains.maxWidth * 0.15,
                            width: constrains.maxWidth * 0.1,
                            child: Icon(Icons.add),
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(30),
                                    topLeft: Radius.circular(30))),
                          ),
                        ),
                        Container(
                          child: Text(
                            '$_countItems',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w700),
                          ),
                          alignment: Alignment.center,
                          width: constrains.maxWidth * 0.1,
                          height: constrains.maxWidth * 0.15,
                          decoration: BoxDecoration(color: Colors.orange),
                        ),
                        GestureDetector(
                          onTap: _decrementCount,
                          child: Container(
                            height: constrains.maxWidth * 0.15,
                            width: constrains.maxWidth * 0.1,
                            child: Icon(Icons.remove),
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(30),
                                    topRight: Radius.circular(30))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Smokehouse',
                            style: TextStyle(
                              fontFamily: 'Bebas',
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                height: 1.2),
                          ),
                          Text(
                            'Beef burger',
                            style: TextStyle(height: 1),
                          )
                        ],
                      ),
                      Text(
                        '\$12.99',
                        style:
                            TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  Container(child: Text('Ingredients', style: TextStyle(fontWeight: FontWeight.w700),),
                  alignment: Alignment.centerLeft,
                  height: constrains.maxHeight * 0.08,),
                  Row(
                    children: <Widget>[
                      AddNewItem(),
                      AddNewItem(),
                      AddNewItem(),
                      AddNewItem(),
                      AddNewItem(),

                    ],
                  ),
                  Container(child: Text('Details', style: TextStyle(fontWeight: FontWeight.w700),),
                    alignment: Alignment.centerLeft,
                    height: constrains.maxHeight * 0.08,),
                  Text('The mostunique burgerin our menu.'
                      'After many years culinary searches,'
                      'a recipe was createdthat is the perfect'
                      'combination of many Ipsum libro dolor'
                      'cito rempa iste ef'),
                  SizedBox(
                    height: 80,
                  )
                ],
              ),
            ),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: Icon(Icons.shopping_cart),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class AddNewItem extends StatelessWidget {
  const AddNewItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 16),
        child: Icon(Icons.add_circle_outline, size: 40, color: Colors.grey,),);
  }
}
