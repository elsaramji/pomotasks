import 'package:flutter/material.dart';
import 'package:pomotasks/futures/tasks/data/task_model.dart';
import 'package:pomotasks/futures/tasks/presentation/widgets/task_description_card.dart';

showTaskDescription(BuildContext context, TaskModel task) {
  return showDialog(
    context: context,
    builder: (context) => ShowTaskDescription(task: task),
  );
}
