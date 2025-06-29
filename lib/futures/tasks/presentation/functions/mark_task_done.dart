import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pomotasks/futures/tasks/data/task_model.dart';
import 'package:pomotasks/futures/tasks/presentation/cubit/tasks_data_cubit.dart';

markTaskDone(BuildContext context, TaskModel task) {
context.read<TasksDataCubit>().addTaskDone(task: task);
}