import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dice Game'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int v1 = 2, v2 = 5;

  void diceChange() {
    setState(() {
      v1 = Random().nextInt(6) + 1;
      v2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                diceChange();
              },
              child: Image.asset('images/dice$v1.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                diceChange();
              },
              child: Image.asset('images/dice$v2.png'),
            ),
          ),
        ],
      ),
    );
  }
}
