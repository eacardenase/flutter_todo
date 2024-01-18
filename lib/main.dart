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
        body: GridView.builder(
          itemCount: 64,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          itemBuilder: (context, index) => Container(
            color: Colors.cyan,
            margin: const EdgeInsets.all(
              2,
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
