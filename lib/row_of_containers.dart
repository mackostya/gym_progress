import 'package:flutter/material.dart';


class RowOfContainers extends StatelessWidget {
  final int counter;
  final double heightOfContainer;
  final double widthOfContainer;
  final Color colorLeft;
  final Color colorRight;
  final String text_left;
  final String text_right;
  const RowOfContainers({Key? key, 
    required this.counter, 
    required this.heightOfContainer, 
    required this.widthOfContainer, 
    this.colorLeft = Colors.black,
    this.colorRight = Colors.purple,
    this.text_left = 'Benchpress',
    this.text_right = 'Biceps'
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          height: heightOfContainer,
          width: widthOfContainer,
          color: colorLeft,
          child: Text(
            '$text_left sets $counter',
            style: const TextStyle(
              color: Colors.white,),
          ) 
        ),
        Container(
          alignment: Alignment.center,
          height: heightOfContainer,
          width: widthOfContainer,
          color: colorRight,
          child: Text(
            '$text_right sets $counter',
            style: const TextStyle(color: Colors.white),
          ) 
        ),
        ]
    );
  }
}
