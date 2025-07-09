
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:pomotasks/features/analytics/presentation/widgets/chart_analytics.dart';
import 'package:pomotasks/features/tasks/data/repos/task_done_repo.dart';

class CharAnalyticstViwe extends StatelessWidget {
  const CharAnalyticstViwe({
    super.key,
    required this.taskDoneRepo,
  });

  final TaskDoneRepo taskDoneRepo;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: taskDoneRepo.tasksDone.listenable(),
      builder: (context, value, child) {
        return Container(
          height: 342.h,
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: ChartAnalytics(yValues: taskDoneRepo.getDoneAtDate(value)),
        );
      },
    );
  }
}
