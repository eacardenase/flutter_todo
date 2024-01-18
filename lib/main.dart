import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List names = ["Edwin", "Ana", "Keyla"];

  @override
  Widget build(BuildContext context) {
    void userTapped() {
      print("User tapped!");
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: GestureDetector(
            onTap: userTapped,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.cyan[200],
              child: const Center(
                child: Text("Tap me!"),
              ),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
