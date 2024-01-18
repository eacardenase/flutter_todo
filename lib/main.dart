import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List names = ["Edwin", "Ana", "Keyla"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            // big box
            Container(
              width: 300,
              height: 300,
              color: Colors.purple,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.purple[400],
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.purple[300],
            )
            // medium box
            // small box
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
