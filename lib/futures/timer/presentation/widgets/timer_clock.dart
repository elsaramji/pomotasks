import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pomotasks/futures/timer/presentation/cubit/timer_cubit.dart';
import 'package:pomotasks/futures/timer/presentation/functions/paues.dart';
import 'package:pomotasks/futures/timer/presentation/functions/rest.dart';
import 'package:pomotasks/futures/timer/presentation/functions/start.dart';
import 'package:pomotasks/futures/timer/presentation/widgets/timer_clock_controls.dart';
import 'package:pomotasks/futures/timer/presentation/widgets/timer_itmes_view.dart';

class TimerClock extends StatefulWidget {
  const TimerClock({super.key});

  @override
  State<TimerClock> createState() => _TimerClockState();
}

class _TimerClockState extends State<TimerClock> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerCubit, TimerState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 24.h),
          child: Column(
            children: [
              TimerItmesViwe(minutes: state.minutes, seconds: state.seconds),
              TimerClockControls(
                startTimer: () => startTimer(context),
                pauseTimer: () => pauseTimer(context),
                restTimer: () => restTimer(context),
              ),
            ],
          ),
        );
      },
    );
  }
}
