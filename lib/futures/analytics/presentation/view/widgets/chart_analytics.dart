import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pomotasks/config/themes/colors/app_colors.dart';
import 'package:pomotasks/config/themes/styles/texts/app_texts_styles.dart';
import 'package:pomotasks/core/value/constant_value.dart';

class ChartAnalytics extends StatefulWidget {
  final List<double> yValues;
  const ChartAnalytics({super.key, required this.yValues});

  @override
  State<ChartAnalytics> createState() => _ChartAnalyticsState();
}

class _ChartAnalyticsState extends State<ChartAnalytics> {
  @override
  Widget build(BuildContext context) {
    return BarChart(
      curve: Curves.linear,
      BarChartData(
        alignment: BarChartAlignment.spaceEvenly,
        barTouchData: BarTouchData(enabled: false),
        gridData: FlGridData(show: false),
        titlesData: FlTitlesData(
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 22.h,
              getTitlesWidget: (value, meta) => Text(
                ConstantValue.weekDays[value.toInt()],
                style: AppTextsStyles.lexendRegular12(),
              ),
            ),
          ),
        ),
        borderData: FlBorderData(show: false),

        barGroups: [
          barChartItme(0, widget.yValues[0]),
          barChartItme(1, widget.yValues[1]),
          barChartItme(2, widget.yValues[2]),
          barChartItme(3, widget.yValues[3]),
          barChartItme(4, widget.yValues[4]),
          barChartItme(5, widget.yValues[5]),
          barChartItme(6, widget.yValues[6]),
        ],
      ),
    );
  }
}

barChartItme(int x, double y) {
  return BarChartGroupData(
    x: x,
    barRods: [
      BarChartRodData(
        borderRadius: BorderRadius.zero,
        width: 20.w,
        toY: y,
        color: AppColors.primaryColor,
      ),
    ],
  );
}
