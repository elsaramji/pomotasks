import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pomotasks/futures/analytics/presentation/view/widgets/chart_analytics.dart';

class AnalyticsMainView extends StatelessWidget {
  const AnalyticsMainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 400.h,
        child: ChartAnalytics(yValues: [1, 2, 3, 4, 5, 6, 7]),
      ),
    );
  }
}
