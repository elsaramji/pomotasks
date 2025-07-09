
import 'package:pomotasks/core/di/get_it_di.dart';
import 'package:pomotasks/features/tasks/data/repos/tasks_repo.dart';
import 'package:pomotasks/features/tasks/data/task_model.dart';

markeAsUnDone(TaskModel task) {
 getIt.get<TasksRepo>().markeTaskUnDone(task: task);
}