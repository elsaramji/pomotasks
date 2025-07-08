import 'package:flutter/widgets.dart';
import 'package:pomotasks/core/di/get_it_di.dart';
import 'package:pomotasks/futures/tasks/data/repos/tasks_repo.dart';
import 'package:pomotasks/futures/tasks/data/task_model.dart';

markTaskDone(BuildContext context, TaskModel task) {
  getIt.get<TasksRepo>().markeTaskDone(task: task);
}
