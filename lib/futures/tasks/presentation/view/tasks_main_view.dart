import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:pomotasks/core/value/constant_value.dart';
import 'package:pomotasks/futures/tasks/data/task_model.dart';
import 'package:pomotasks/futures/tasks/presentation/widgets/no_tasks_in_data.dart';
import 'package:pomotasks/futures/tasks/presentation/widgets/task_card.dart';
import 'package:pomotasks/futures/tasks/presentation/widgets/tasks_app_bar.dart';

class TasksMainView extends StatefulWidget {
  const TasksMainView({super.key});

  @override
  State<TasksMainView> createState() => _TasksMainViewState();
}

class _TasksMainViewState extends State<TasksMainView> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Hive.box<TaskModel>(
        ConstantValue.tasksBoxKey,
      ).listenable(),
      builder: (BuildContext context, Box<TaskModel> value, Widget? child) {
        return Column(
          children: [
            TasksAppBar(),
            Expanded(
              child: CustomScrollView(
                slivers: [
                  value.isEmpty
                      ? SliverFillRemaining(child: NoTasksInData())
                      : SliverList.builder(
                          itemCount: value.length,
                          itemBuilder: (context, index) =>
                              TaskCard(task: value.getAt(index)!),
                        ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
