import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const Dice());
}

class Dice extends StatelessWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          leading: const Icon(
            Icons.android,
            color: Colors.blue,
            size: 25.0,
          ),
          centerTitle: true,
          backgroundColor: Colors.red[900],
          title: const Text('DICE'),
        ),
        body: const SafeArea(child: DicePage()),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;
  int rightDice = 1;

  void diceRandom() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  // dynamic rightDice;
  @override
  Widget build(BuildContext context) {
    // rightDice = 2;
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            // flex: 2,
            child: TextButton(
              onPressed: () {
                diceRandom();
              },
              child: Image.asset('images/dice$leftDice.png'),
            ),
          ),
          Expanded(
            //  flex: 1,
            child: TextButton(
              onPressed: () {
                diceRandom();
              },
              child: Image.asset('images/dice$rightDice.png'),
            ),
          ),
        ],
      ),
    );
  }
}
