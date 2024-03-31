import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ask me anything'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: const BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

int ballNumber = 1;

class _BallPageState extends State<BallPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: TextButton(
            onPressed: () {
              setState(
                () {
                  ballNumber = Random().nextInt(4) + 1;
                },
              );
            },
            child: Image.asset('assets/images/ball$ballNumber.png'),
          ),
        ),
      ],
    );
  }
}
