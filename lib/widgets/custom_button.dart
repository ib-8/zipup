import 'package:flutter/material.dart';

import '../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    this.buttonText,
    this.horizontal = 100,
    this.vertical = 20,
    this.textSize = 30,
    this.padding = 0,
    this.onPressed,
  });

  final String buttonText;
  final double horizontal;
  final double vertical;
  final double textSize;
  final double padding;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: RaisedButton(
        color: green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        padding:
            EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        child: Text(
          buttonText,
          style: textStyle(textSize, weight: FontWeight.bold),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
