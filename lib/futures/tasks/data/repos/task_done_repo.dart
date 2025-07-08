import 'package:hive/hive.dart';
import 'package:pomotasks/core/value/constant_value.dart';
import 'package:pomotasks/futures/tasks/data/task_model.dart';

class TaskDoneRepo {
  final tasksDone = Hive.box<TaskModel>(ConstantValue.tasksDoneBoxKey);

  List<TaskModel> getTasksDone() => tasksDone.values.toList();

  List<int> getDoneAtDate() {
    int mon = 0;
    int tue = 0;
    int wed = 0;
    int thu = 0;
    int fri = 0;
    int sat = 0;
    int sun = 0;

    for (var task in tasksDone.values.toList()) {
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
