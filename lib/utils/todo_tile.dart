import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  const ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
  });

  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 20,
        ),
        decoration: const BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.all(
            Radius.circular(
              10,
            ),
          ),
        ),
        child: Row(
          children: [
            Checkbox(value: taskCompleted, onChanged: onChanged),
            Text(
              taskName,
              style: TextStyle(
                fontSize: 18,
                decoration: taskCompleted
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
