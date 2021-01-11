import 'package:flutter/material.dart';

var customMargin = 12.0;

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.cardColor, this.cardChild});

  final Color cardColor;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(customMargin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: cardColor,
      ),
    );
  }
}
