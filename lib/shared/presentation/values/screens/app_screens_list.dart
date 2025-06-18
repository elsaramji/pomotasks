import 'package:flutter/widgets.dart';
import 'package:pomotasks/futures/analytics/presentation/view/analytics_main_view.dart';
import 'package:pomotasks/futures/tasks/presentation/view/tasks_main_view.dart';
import 'package:pomotasks/futures/timer/presentation/views/timer_view.dart';

List<Widget> screens = [
  TimerView(),
  TasksMainView(),
  AnalyticsMainView(),
];
