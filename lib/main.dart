import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade300,
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  20,
                ),
              ),
              color: Colors.deepPurple,
            ),
            padding: const EdgeInsets.all(
              10,
            ),
            child: const Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Edwin",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.pink,
                  ),
                  Text(
                    "Flutter",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
