import 'package:flutter/material.dart';
import 'package:super_z/constants.dart';

class MsgContainer extends StatelessWidget {
  MsgContainer({this.message});
  final String message;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
      child: Material(
        color: green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            message,
            style: textStyle(15),
          ),
        ),
      ),
    );
  }
}
