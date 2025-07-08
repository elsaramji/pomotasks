import 'package:hive/hive.dart';
import 'package:pomotasks/core/value/constant_value.dart';
import 'package:pomotasks/futures/tasks/data/task_model.dart';

class TasksRepo {
  final tasks = Hive.box<TaskModel>(ConstantValue.tasksBoxKey);
  final tasksDone = Hive.box<TaskModel>(ConstantValue.tasksDoneBoxKey);

  List<TaskModel> getTasks() {
    return tasks.values.toList();
  }

  addTask({required TaskModel task}) async {
    tasks.put(task.id, task);
  }

  addTaskDone({required TaskModel task}) {
    deletTaskfromTasks(task: task);
    tasksDone.put(task.id, task);
  }

  deletTaskfromTasks({required TaskModel task}) {
    tasks.delete(task.id);
  }

  markeTaskDone({required TaskModel task}) {
    deletTaskfromTasks(task: task);
    task.doneAt = DateTime.now().weekday;
    tasksDone.put(task.id, task);
  }
}
