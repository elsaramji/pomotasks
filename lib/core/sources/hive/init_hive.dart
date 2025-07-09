
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as PathProvider;
import 'package:pomotasks/core/value/constant_value.dart';
import 'package:pomotasks/features/tasks/data/task_model.dart';

Future<void> hiveinit() async {
  final app_Path = await PathProvider.getApplicationDocumentsDirectory();
  await Hive
    ..init(app_Path.path)
    ..registerAdapter(TaskModelAdapter());
  if (!Hive.isBoxOpen(ConstantValue.tasksBoxKey) &&
      !Hive.isBoxOpen(ConstantValue.tasksDoneBoxKey)) {
    await Hive.openBox<TaskModel>(ConstantValue.tasksBoxKey);
    await Hive.openBox<TaskModel>(ConstantValue.tasksDoneBoxKey);
  }
}