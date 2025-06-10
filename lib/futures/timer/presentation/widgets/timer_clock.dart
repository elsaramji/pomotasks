import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pomotasks/core/value/constant_value.dart';
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
  int minutes = ConstantValue.defaultMinutes;
  int seconds = ConstantValue.defaultSeconds;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TimerCubit(),
      child: Builder(
        builder: (context) {
          return BlocListener<TimerCubit, TimerState>(
            listener: (context, state) {
              if (state is TimerChanged) {
                minutes = state.minutes;
                seconds = state.seconds;
                setState(() {});
              }
              if (state is TimerReset) {
                minutes = state.minutes;
                seconds = state.seconds;
                setState(() {});
              }
            },
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 24.h),
              child: Column(
                children: [
                  TimerItmesViwe(minutes: minutes, seconds: seconds),
                  TimerClockControls(
                    startTimer: () => startTimer(context, minutes, seconds),
                    pauseTimer: () => pauseTimer(context),
                    restTimer: () => restTimer(context),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
