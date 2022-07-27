import 'package:flutter/material.dart';

class ExerciseContent extends StatelessWidget {
  final String name;
  const ExerciseContent({Key? key, this.name = "Exercise"}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: TextField(
          onSubmitted: (String value) async {
            await showDialog<void>(
              context: context,
              builder: (BuildContext context) {
                  return Text('You typed $value');
              },
            );
          },
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: 'Enter number of sets',
          ),
        ),
      ),
    );
  }
}