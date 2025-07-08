import 'package:flutter/material.dart';
import 'package:pomotasks/futures/tasks/presentation/widgets/add_task_fom.dart';

addTask(BuildContext context) {
  showBottomSheet(
    context: context,
    builder: (context) {
      return AddTaskForm();
    },
  );
}
