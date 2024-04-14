import 'package:bloc_with_freezed/blocs/todo_list/todo_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'pages/todos_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<TodoListBloc>(create: (context) => TodoListBloc())
        ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'TODO Bloc',
            theme: ThemeData(primarySwatch: Colors.deepPurple),
            home: const TodosPage()));
  }
}
