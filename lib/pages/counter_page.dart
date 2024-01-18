import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  // variable
  int _counter = 0;

  // method
  void _incrementCounter() {
    // rebuilds the widget
    setState(() {
      _counter++;
    });
  }

  // UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //  message
            const Text(
              "You have pushed the counter this many times:",
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),

            // counter
            Text(
              _counter.toString(),
              style: const TextStyle(
                fontSize: 40,
              ),
            ),

            // button
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Icon(
                Icons.plus_one,
              ),
            )
          ],
        ),
      ),
    );
  }
}
