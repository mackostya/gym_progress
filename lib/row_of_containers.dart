import 'package:flutter/material.dart';
import 'exercise_content.dart';

class RowOfContainers extends StatelessWidget {
  final int counter;
  final double heightOfContainer;
  final double widthOfContainer;
  final Color colorLeft;
  final Color colorRight;
  final String textLeft;
  final String textRight;
  const RowOfContainers({Key? key, 
    required this.counter, 
    required this.heightOfContainer, 
    required this.widthOfContainer, 
    this.colorLeft = Colors.black,
    this.colorRight = Colors.purple,
    this.textLeft = 'Benchpress',
    this.textRight = 'Biceps'
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
          child: Scaffold(
            body: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                    textStyle:
                        const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                child: Text('$textLeft \nN sets $counter',
                        style: const TextStyle(
                        color: Colors.white,),
                        ),
                onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ExerciseContent(name: textLeft)),
                  );
                },
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          height: heightOfContainer,
          width: widthOfContainer,
          color: colorRight,
          child: Scaffold(
            body: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                    textStyle:
                        const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                child: Text('$textLeft \nN sets $counter',
                        style: const TextStyle(
                        color: Colors.white,),
                        ),
                onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ExerciseContent(name: textLeft)),
                  );
                },
              ),
            ),
          ), 
        ),
        ]
    );
  }
}
