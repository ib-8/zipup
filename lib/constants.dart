import 'package:flutter/material.dart';

const Color white = Colors.white;
const Color black = Colors.black;
Color green = Colors.greenAccent[400];
const Color greyBlack = Color(0xff777777);

TextStyle textStyle(size, {color = white, weight = FontWeight.normal}) {
  return TextStyle(
    color: color,
    fontSize: size,
    fontWeight: weight,
  );
}

navigate(context, page) {
  return Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (_) => page));
}
