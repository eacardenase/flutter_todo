import 'package:flutter/material.dart';

import 'package:todo/pages/first_page.dart';
import 'package:todo/pages/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const FirstPage(),
      routes: {"/secondpage": (context) => const SecondPage()},
      debugShowCheckedModeBanner: false,
    );
  }
}
