
import 'package:flutter/material.dart';
import 'package:pomotasks/futures/timer/presentation/widgets/timer_clock_item.dart';

class TimerItmesViwe extends StatelessWidget {
  const TimerItmesViwe({
    super.key,
    required this.minutes,
    required this.seconds,
  });

  final int minutes;
  final int seconds;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TimerClockItem(value: "$minutes", title: 'Muinutes'),
        TimerClockItem(value: "$seconds", title: 'Seconds'),
      ],
    );
  }
}
