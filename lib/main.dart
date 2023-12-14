import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
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
  Alignment alignment = Alignment.centerLeft;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "Please wait ..",
            style: TextStyle(
              letterSpacing: 3,
            ),
          ),
          _buildAnimatedWord("Bonjour", 100),
          AnimatedContainer(
            width: MediaQuery.of(context).size.width,
            alignment: alignment,
            duration: const Duration(milliseconds: 400),
            child: Lottie.asset(
              "asset/car2.json",
              width: 150,
            ),
          ),
          AnimatedContainer(
            width: MediaQuery.of(context).size.width,
            alignment: alignment,
            duration: const Duration(milliseconds: 400),
            child: Lottie.asset(
              "asset/bonjour.json",
              width: 150,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: AnimatedContainer(
              width: MediaQuery.of(context).size.width,
              alignment: alignment,
              duration: const Duration(milliseconds: 300),
              child: Lottie.asset(
                "asset/animation.json",
                width: 300,
              ),
            ),
          ),
          const Text("we are currently checking our records"),
          ElevatedButton(
            onPressed: () {
              setState(() {
                alignment = alignment == Alignment.centerLeft
                    ? Alignment.centerRight
                    : Alignment.centerLeft;
              });
            },
            child: const Text("cliquer içi!"),
          )
        ],
      ),
    );
  }

  Widget _buildAnimatedWord(String word, int delay) {
    return FutureBuilder<void>(
      future: _animateWord(word, delay),
      builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
        return Text(
          word,
          style: TextStyle(
            letterSpacing: 3,
          ),
        );
      },
    );
  }

  Future<void> _animateWord(String word, int delay) async {
    for (int i = 1; i <= word.length; i++) {
      await Future.delayed(Duration(milliseconds: delay));
      setState(() {});
    }
  }
}
