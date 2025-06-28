part of 'tasks_data_cubit.dart';

sealed class TasksDataState {
  List tasks;

  TasksDataState({required this.tasks});
}

final class TasksDataInitial extends TasksDataState {
  TasksDataInitial() : super(tasks: []);
}

final class TasksDataStored extends TasksDataState {
  TasksDataStored({required super.tasks});
}

final class TasksDataUpdated extends TasksDataState {
  TasksDataUpdated() : super(tasks: []);
}
