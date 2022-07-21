import 'package:flutter/material.dart';
import 'bottom_bar.dart';
import 'row_of_containers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    double heightOfContainer = MediaQuery.of(context).size.height / 4;
    double widthOfContainer = MediaQuery.of(context).size.width / 2;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          backgroundColor: Colors.white, 
        )
      ),
      body: Center(
        child: SingleChildScrollView(
          physics:const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              RowOfContainers(
                counter: _counter, 
                heightOfContainer: heightOfContainer, 
                widthOfContainer: widthOfContainer),
              RowOfContainers(
                counter: _counter, 
                heightOfContainer: heightOfContainer, 
                widthOfContainer: widthOfContainer,
                colorLeft: Colors.purple,
                colorRight: Colors.black,
                text_left: 'Jumprope',
                text_right: 'Abs'),
              RowOfContainers(
                counter: _counter, 
                heightOfContainer: heightOfContainer, 
                widthOfContainer: widthOfContainer,
                text_left: 'Forearms',
                text_right: 'Squats'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
