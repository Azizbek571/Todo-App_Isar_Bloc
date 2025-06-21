import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp_bloc/domain/models/repository/todo_repo.dart';
import 'package:todoapp_bloc/presentation/todo_cubit.dart';
import 'package:todoapp_bloc/presentation/todo_view.dart';

class TodoPage extends StatelessWidget {
  final TodoRepo todorepo;
  const TodoPage({super.key, required this.todorepo});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoCubit(todorepo),
      child: TodoView(),
    );
  }
}
