
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextButton(
                child: Image.asset(
                  'assets/images/dice$leftDiceNumber.png',
                ),
                onPressed: () {
                  changeDiceFace();
                },
              ),
            ),
            const SizedBox(width: 32.0,),
            Expanded(
              child: TextButton(
                child: Image.asset(
                  'assets/images/dice$rightDiceNumber.png',
                ),
                onPressed: () {
                  changeDiceFace();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
