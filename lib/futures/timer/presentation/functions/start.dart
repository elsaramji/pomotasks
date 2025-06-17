import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pomotasks/futures/timer/presentation/cubit/timer_cubit.dart';

void startTimer(BuildContext context, int minutes, int seconds) {
  context.read<TimerCubit>().startTimer(minutes: minutes, seconds: seconds);
}
