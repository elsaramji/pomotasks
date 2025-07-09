import 'package:get_it/get_it.dart';
import 'package:pomotasks/features/tasks/data/repos/task_done_repo.dart';
import 'package:pomotasks/features/tasks/data/repos/tasks_repo.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<TasksRepo>(TasksRepo());
  getIt.registerSingleton<TaskDoneRepo>(TaskDoneRepo());
}
