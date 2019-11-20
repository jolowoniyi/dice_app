import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text('THE DICE', style: TextStyle( fontSize: 40.0, fontWeight: FontWeight.bold,
            color: Colors.white),),
          ),
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
  int leftDiceNumber = 2;
  int rightDiceNumber = 3;

  void changeDice (){
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;

  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed:  (){
                setState(() {
                  changeDice();
                  print('Pressed left button');
                });

              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed:  (){
                setState(() {
                 changeDice();
                  print('Pressed left button');
                });

              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),

        ],
      ),
    );
  }
}
