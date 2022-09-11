import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _phrases = [
    "Run, you could be the one",
    "Stay Safe",
    "Congratulations, you are awesome!",
    "You are amazing!",
  ];

  var _phrase = "Click below to generate a new phrase";

  void _generatePhrase() {
    var randomNumber = Random().nextInt(_phrases.length);
    setState(() {
      _phrase = _phrases[randomNumber];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daily Phrases"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          // width: double.infinity,
          // decoration: BoxDecoration(
          //   border: Border.all(
          //     color: Colors.amber,
          //     width: 3,
          //   ),
          // ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("images/logo.png"),
              Text(
                _phrase,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
              ElevatedButton(
                onPressed: _generatePhrase,
                child: Text(
                  "New Phrase",
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
