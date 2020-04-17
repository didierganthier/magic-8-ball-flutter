import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MagicBall());

class MagicBall extends StatefulWidget{
  @override
  MagicBallState createState() => MagicBallState();

}

class MagicBallState extends State<MagicBall>{

  int ballNumber = 1;

  generateRandomNumber()
  {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Magic Ball',
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          centerTitle: true,
          title: Text(
              'Ask me anything',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
          child: FlatButton(
            child: Image.asset('images/ball$ballNumber.png'),
            onPressed: () {
              generateRandomNumber();
            },
          ),
        ),
      ),
    );
  }
}
