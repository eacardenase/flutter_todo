import 'package:flutter/material.dart';
import 'package:todo/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "First Page",
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to second page
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SecondPage(),
              ),
            );
          },
          child: const Text(
            "Go to Second Page",
          ),
        ),
      ),
    );
  }
}
