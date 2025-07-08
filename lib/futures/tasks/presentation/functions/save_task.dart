import 'package:flutter/material.dart';
import 'package:pomotasks/core/di/get_it_di.dart';
import 'package:pomotasks/futures/tasks/data/repos/tasks_repo.dart';
import 'package:pomotasks/futures/tasks/data/task_model.dart';

saveTask(
  BuildContext context, {
  required String taskName,
  required String taskDescription,
}) async {
getIt.get<TasksRepo>().addTask(
    task: TaskModel(
      title: taskName,
      description: taskDescription,
      id: '${DateTime.now().millisecondsSinceEpoch}',
    ),
  );
  Navigator.pop(context);
  // context.pop(); // close all screen with state
}
