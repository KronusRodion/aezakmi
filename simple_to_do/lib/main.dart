import 'package:flutter/cupertino.dart';
import 'package:simple_to_do/add_note.dart';
import 'package:simple_to_do/todo_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'To-Do List App',
      home: TodoListScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        'TodoListScreen': (context) => TodoListScreen(),
        'AddNoteScreen': (context) => AddNoteScreen(),
      },
      initialRoute: 'TodoListScreen',
    );
  }
}
