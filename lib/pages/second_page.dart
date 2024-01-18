import 'package:flutter/material.dart';
import 'package:todo/pages/first_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Second Page",
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // navigate to first page
            Navigator.pop(context);
          },
          child: const Text(
            "Go to First Page",
          ),
        ),
      ),
    );
  }
}
