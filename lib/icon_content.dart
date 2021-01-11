import 'package:flutter/material.dart';
class IconContent extends StatelessWidget {
  const IconContent({this.emoji, this.iconText});

  final emojiSize = 50.0;

  final emoji;
  final iconText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Text(
          emoji,
          style: TextStyle(fontSize:emojiSize) ,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text('$iconText'),

      ],

    );
  }
}