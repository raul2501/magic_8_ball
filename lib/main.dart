import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask Me Anything'),
      ),
      body: Ball(),
      backgroundColor: Colors.blue.shade100,
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextButton(
      onPressed: () {
        setState(() {
          ballNumber = Random().nextInt(5) + 1;
          print(ballNumber);
        });
      },
      child: 
      Image.asset('images/ball$ballNumber.png', height: 500.0, width: 500.0,),
    )
    );
  }
}
