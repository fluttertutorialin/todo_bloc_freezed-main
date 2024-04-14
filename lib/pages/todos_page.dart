import 'package:flutter/material.dart';

import '../widgets/create_todo.dart';
import '../widgets/show_todos.dart';

class TodosPage extends StatelessWidget {
  const TodosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
                    child: Column(children: [
                      CreateTodo(),
                      SizedBox(height: 20.0),
                      ShowTodos()
                    ])))));
  }
}
