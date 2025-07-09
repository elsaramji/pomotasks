import 'package:hive/hive.dart';
import 'package:pomotasks/core/value/constant_value.dart';
import 'package:pomotasks/features/tasks/data/task_model.dart';

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

  deletfromTasksDone({required TaskModel task}) {
    tasksDone.delete(task.id);
  }

  markeTaskDone({required TaskModel task}) {
    deletTaskfromTasks(task: task);
    task.isDone = true;
    task.doneAt = DateTime.now().weekday;
    tasksDone.put(task.id, task);
  }

  markeTaskUnDone({required TaskModel task}) {
    deletfromTasksDone(task: task);
    task.isDone = false;
    task.doneAt = 0;
    tasks.put(task.id, task);
  }
}
