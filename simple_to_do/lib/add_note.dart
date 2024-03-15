import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_to_do/todo_list_screen.dart';

class AddNoteScreen extends StatefulWidget {
  List<Task> tasks = [];
  @override
  _AddNoteScreenState createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  TextEditingController taskController = TextEditingController();

  void goToDoList() {
    context
        .findAncestorStateOfType<TodoListScreenState>()
        ?.tasks
        .add(Task(title: taskController.text));
    Navigator.of(context).pushReplacementNamed('AddNoteScreen');
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Add a new note'),
        trailing:
            IconButton(onPressed: goToDoList, icon: const Icon(Icons.check)),
      ),
      child: CupertinoTextField(
        autocorrect: true,
        controller: taskController,
      ),
    );
  }
}
