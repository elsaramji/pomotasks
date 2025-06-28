import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pomotasks/futures/tasks/data/task_model.dart';
import 'package:pomotasks/futures/tasks/presentation/cubit/tasks_data_cubit.dart';

saveTask(
  BuildContext context, {
  required String taskName,
  required String taskDescription,
}) async {
  context.read<TasksDataCubit>().addTask(
    task: TaskModel(
      title: taskName,
      description: taskDescription,
      id: '${DateTime.now().millisecondsSinceEpoch}',
    ),
  );
  Navigator.pop(context);
  // context.pop(); // close all screen with state
}
