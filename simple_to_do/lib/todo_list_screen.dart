import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_to_do/add_note.dart';

class TodoListScreen extends StatefulWidget {
  @override
  TodoListScreenState createState() => TodoListScreenState();
}

class TodoListScreenState extends State<TodoListScreen> {
  bool darkTheme = false;
  List<Task> tasks = [];
  void createTask() {
    Navigator.of(context).pushReplacementNamed('AddNoteScreen');
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor:
          darkTheme ? const Color.fromARGB(255, 35, 33, 33) : Colors.white,
      navigationBar: CupertinoNavigationBar(
        leading: CupertinoSwitch(
          value: darkTheme,
          onChanged: (value) {
            setState(() {
              darkTheme = value;
            });
          },
        ),
        middle: const Text('Notes'),
        trailing:
            IconButton(onPressed: createTask, icon: const Icon(Icons.add)),
      ),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return CupertinoListTile(
                  title: Text(tasks[index].title),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Task {
  String title;

  Task({required this.title});
}
