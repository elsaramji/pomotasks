import 'package:flutter/widgets.dart';
import 'package:pomotasks/features/analytics/presentation/view/analytics_main_view.dart';
import 'package:pomotasks/features/tasks/presentation/view/tasks_main_view.dart';
import 'package:pomotasks/features/timer/presentation/views/timer_view.dart';

List<Widget> screens = [
  TimerView(),
  TasksMainView(),
  AnalyticsMainView(),
];
