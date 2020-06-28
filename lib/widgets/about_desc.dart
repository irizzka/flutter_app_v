import 'package:flutter/material.dart';

class AboutDesc extends StatelessWidget {

  final String text;
  final Widget child;
  const AboutDesc({
    this.text,
    this.child,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          child: child,
          padding: EdgeInsets.only(right: 5.0),
        ),
        Text(text, style: Theme.of(context).textTheme.display3.copyWith(fontSize: 14),)
      ],
    );
  }
}