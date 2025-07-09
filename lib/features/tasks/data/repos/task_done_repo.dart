import 'package:hive/hive.dart';
import 'package:pomotasks/core/value/constant_value.dart';
import 'package:pomotasks/features/tasks/data/task_model.dart';

class TaskDoneRepo {
  final tasksDone = Hive.box<TaskModel>(ConstantValue.tasksDoneBoxKey);

  List<TaskModel> getTasksDone() => tasksDone.values.toList();

  List<double> getDoneAtDate(Box<TaskModel> tasksDonefiter) {
    double mon = 0;
    double tue = 0;
    double wed = 0;
    double thu = 0;
    double fri = 0;
    double sat = 0;
    double sun = 0;

    for (var task in tasksDonefiter.values.toList()) {
      switch (task.doneAt) {
        case 1:
          mon++;
          break;
        case 2:
          tue++;
          break;
        case 3:
          wed++;
          break;
        case 4:
          thu++;
          break;
        case 5:
          fri++;
          break;
        case 6:
          sat++;
          break;
        case 7:
          sun++;
          break;
      }
    }

    return [mon, tue, wed, thu, fri, sat, sun];
  }
}
