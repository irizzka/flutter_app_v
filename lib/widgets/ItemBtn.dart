import 'package:flutter/material.dart';

class ItemBtn extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;

  const ItemBtn({Key key, this.height, this.width, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('tap view recipe');
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
