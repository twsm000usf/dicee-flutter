import 'dart:math';
import 'package:flutter/material.dart';

var random = Random();

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    VoidCallback onPressEvent = () {
      setState(() {});
    };
    return Center(
      child: Row(
        children: <Widget>[
          getButtonExpanded(onPressEvent),
          getButtonExpanded(onPressEvent),
        ],
      ),
    );
  }
}

Widget getButtonExpanded(VoidCallback onPress) {
  return Expanded(
    flex: 1,
    child: FlatButton(
      onPressed: () {
        onPress();
      },
      child: Image.asset(getDiceImageAsset()),
    ),
  );
}

int getRandomSixFaceDiceNumber() {
  return random.nextInt(6) + 1;
}

String getDiceImageAsset() {
  int number = getRandomSixFaceDiceNumber();
  return 'images/dice$number.png';
}
