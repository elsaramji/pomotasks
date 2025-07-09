import 'package:flutter/material.dart';
import 'package:pomotasks/core/context/context_exitinion.dart';
import 'package:pomotasks/core/di/get_it_di.dart';
import 'package:pomotasks/features/analytics/presentation/widgets/charts_analytics_view.dart';
import 'package:pomotasks/features/analytics/presentation/widgets/overview_app_bar.dart';
import 'package:pomotasks/features/analytics/presentation/widgets/tasks_done_list_view.dart';
import 'package:pomotasks/features/tasks/data/repos/task_done_repo.dart';

class AnalyticsMainView extends StatefulWidget {
  const AnalyticsMainView({super.key});

  @override
  State<AnalyticsMainView> createState() => _AnalyticsMainViewState();
}

class _AnalyticsMainViewState extends State<AnalyticsMainView> {
  final TaskDoneRepo taskDoneRepo = getIt.get<TaskDoneRepo>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OverviewAppBar(),
        TasksDoneListView(taskDoneRepo: taskDoneRepo),
        context.spaceHorizonal32(),
        CharAnalyticstViwe(taskDoneRepo: taskDoneRepo)
      ],
    );
  }
}

