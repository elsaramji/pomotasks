import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:pomotasks/futures/tasks/data/task_model.dart';

part 'tasks_data_state.dart';

class TasksDataCubit extends Cubit<TasksDataState> {
  TasksDataCubit() : super(TasksDataInitial());
  Future<Box> tasks = Hive.openBox('tasks', path: Directory.systemTemp.path);
  Future<Box> tasksDone = Hive.openBox(
    'tasksDone',
    path: Directory.systemTemp.path,
  );

  Future<List> data() {
    return tasks.then((value) => value.values.toList());
  }

  futchTasksData() async {
    List tasksList = await data();
    emit(TasksDataStored(tasks: tasksList));
  }

  addTask({required TaskModel task}) async {
    emit(TasksDataUpdated());
    
    await tasks.then((value) => value.put(task.id, task));
  }

  addTaskDone({required TaskModel task}) async {
    tasksDone.then((value) => value.put(task.id, task));
  }

  deletTaskfromTasks({required TaskModel task}) async {
    tasks.then((value) => value.delete(task.id));
  }

  celerTasks() async {
    tasks.then((value) => value.clear());
  }
}
