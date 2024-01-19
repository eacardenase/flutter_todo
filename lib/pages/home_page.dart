import 'package:flutter/material.dart';

import 'package:todo/utils/todo_tile.dart';
import 'package:todo/utils/dialog_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();

  List toDoList = [
    {"name": "Make coffee", "completed": true},
    {"name": "Learn Flutter", "completed": true},
    {"name": "Master Flutter", "completed": false},
  ];

  void _checkboxChanged(bool? value, int index) {
    setState(() {
      var todo = toDoList[index];

      todo["completed"] = value;
    });
  }

  void _saveNewTask() {
    final newTask = {"name": _controller.text, "completed": false};

    setState(() {
      toDoList.add(newTask);

      _controller.clear();
    });

    Navigator.of(context).pop();
  }

  void _createNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            controller: _controller,
            onSave: _saveNewTask,
            onCancel: () => Navigator.of(context).pop(),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade200,
      appBar: AppBar(
        title: const Text(
          "TO DO",
          style: TextStyle(letterSpacing: 1, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _createNewTask,
        // elevation: 0,
        backgroundColor: Colors.yellow,
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          final todo = toDoList[index];

          return ToDoTile(
            taskName: todo["name"],
            taskCompleted: todo["completed"],
            onChanged: (value) => _checkboxChanged(value, index),
          );
        },
      ),
    );
  }
}
