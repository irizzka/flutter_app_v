import 'package:flutter/material.dart';
import 'package:flutter_app_v/widgets/AboutDesc.dart';
import 'package:flutter_app_v/widgets/ItemBtn.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

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
      body: Container(
        color: Colors.white,
        //  padding: EdgeInsets.only(top: 40),
        margin: EdgeInsets.symmetric(horizontal: 40, vertical: 70),
        child: Stack(
          alignment: Alignment.topRight,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 75),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      gradient: new LinearGradient(colors: [
                        Colors.red.withOpacity(0.9),
                        Colors.orange.withOpacity(0.9),
                      ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 70,
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 20.0),
                          child: Text(
                            '| Chinese', style: Theme.of(context).textTheme.caption,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Text(
                              'Hot & Prawn Noodles',
                              style: Theme.of(context).textTheme.title
                          ),
                        ),
                        Text(
                          'Loren ipsum dolaor sit amen, cons ectetur adipisting'
                              'elit, set doesie mod temor incidid unit utit labare'
                              'et dalore magna aliquia ua.',
                          style: Theme.of(context).textTheme.body1,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              AboutDesc(child: Icon(Icons.alarm), text: '20 min',),
                              AboutDesc(child: Icon(Icons.format_align_right), text: '5 Ing',),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            ItemBtn(height: 60, width: 60, child: Icon(Icons.add),),
                            ItemBtn(
                              height: 60,
                              width: 180,
                              child: Text(
                                'View Recipe',
                                style: Theme.of(context).textTheme.display1,
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
              width: 250,
              height: 250,
              child: Image.asset('assets/images/noodle'
                  '.png'),
            ),
          ],
        ),
      ),
    );
  }
}
