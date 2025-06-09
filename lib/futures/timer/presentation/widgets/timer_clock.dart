
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pomotasks/futures/timer/presentation/widgets/timer_clock_item.dart';

class TimerClock extends StatelessWidget {
  const TimerClock({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TimerClockItem(value: '24', title: 'Muinutes'),
          TimerClockItem(value: '59', title: 'Seconds'),
        ],
      ),
    );
  }
}
