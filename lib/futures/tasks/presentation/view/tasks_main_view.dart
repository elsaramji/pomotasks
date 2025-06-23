import 'package:flutter/material.dart';
import 'package:pomotasks/futures/tasks/presentation/widgets/task_card.dart';
import 'package:pomotasks/futures/tasks/presentation/widgets/tasks_app_bar.dart';

class TasksMainView extends StatelessWidget {
  const TasksMainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TasksAppBar(),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => TaskCard(),
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}
