
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:pomotasks/features/tasks/data/repos/task_done_repo.dart';
import 'package:pomotasks/features/tasks/data/task_model.dart';
import 'package:pomotasks/features/tasks/presentation/widgets/task_card.dart';

class TasksDoneListView extends StatelessWidget {
  const TasksDoneListView({
    super.key,
    required this.taskDoneRepo,
  });

  final TaskDoneRepo taskDoneRepo;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ValueListenableBuilder(
        valueListenable: taskDoneRepo.tasksDone.listenable(),
        builder: (context, Box<TaskModel> value, child) => ListView.builder(
          itemBuilder: (context, index) =>
              TaskCard(task: value.getAt(index)!),
          itemCount: value.length,
        ),
      ),
    );
  }
}
