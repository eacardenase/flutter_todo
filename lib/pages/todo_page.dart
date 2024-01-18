import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  TextEditingController myController = TextEditingController();

  String _greetingMessage = "";

  void _greetUser() {
    String userName = myController.text;

    setState(() {
      _greetingMessage = "Hello, $userName";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 8,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _greetingMessage,
                style: const TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                ),
              ),
              TextField(
                controller: myController,
                decoration: const InputDecoration(
                  hintText: "Tell me your name...",
                  border: OutlineInputBorder(),
                ),
              ),
              ElevatedButton(
                onPressed: _greetUser,
                child: const Text("Greet user"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
