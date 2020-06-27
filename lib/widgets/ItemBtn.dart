import 'package:flutter/material.dart';

class ItemBtn extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  final String dishTitle;
  final Function addDishF;

  const ItemBtn({Key key, this.height,this.dishTitle, this.width, this.child, this.addDishF})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
          addDishF(dishTitle);
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.orange),
        height: height,
        width: width,
        child: Center(child: child),
      ),
    );
  }
}
