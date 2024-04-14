import 'package:bloc_with_freezed/blocs/todo_list/todo_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateTodo extends StatefulWidget {
  const CreateTodo({super.key});

  @override
  createState() => _CreateTodoState();
}

class _CreateTodoState extends State<CreateTodo> {
  late final TextEditingController newTodoController;

  @override
  void initState() {
    super.initState();
    newTodoController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    newTodoController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: newTodoController,
        decoration: const InputDecoration(
          labelText: 'What to do?',
        ),
        onSubmitted: (String? todoDesc) {
          if (todoDesc != null && todoDesc.trim().isNotEmpty) {
            context.read<TodoListBloc>().add(
                  TodoListEvent.add(
                    todoDesc: todoDesc,
                  ),
                );
            newTodoController.clear();
          }
        });
  }
}
