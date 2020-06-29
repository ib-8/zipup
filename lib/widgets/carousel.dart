import 'package:flutter/material.dart';
import 'package:super_z/constants.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget(
      {this.imageUrl, this.imageText, this.onPressed, this.color});

  final String imageUrl;
  final String imageText;
  final Function onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, bottom: 5, left: 20, right: 15),
      child: GestureDetector(
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: ShapeDecoration(
            color: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: BorderSide(color: green, width: 2)),
          ),
          child: Column(
            children: [
              Card(
                elevation: 25,
                shadowColor: black,
                shape: CircleBorder(),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      child: Image.asset(
                        imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      '1256\n joined',
                      style: textStyle(25, weight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                imageText,
                style: textStyle(17, color: black, weight: FontWeight.bold),
              )
            ],
          ),
        ),
        onTap: onPressed,
      ),
    );
  }
}
