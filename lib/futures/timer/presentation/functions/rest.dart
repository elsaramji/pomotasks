

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pomotasks/futures/timer/presentation/cubit/timer_cubit.dart';

void restTimer(BuildContext context) {
   context.read<TimerCubit>().resetTimer();
}