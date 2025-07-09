part of 'timer_cubit.dart';

// ignore: must_be_immutable
sealed class TimerState {
  int minutes, seconds;
  TimerState({required this.minutes, required this.seconds});
}

final class TimerInitial extends TimerState {
  TimerInitial()
    : super(
        minutes: ConstantValue.defaultMinutes,
        seconds: ConstantValue.defaultSeconds,
      );
}

final class TimerChanged extends TimerState {
  TimerChanged({required super.minutes, required super.seconds});
}

final class TimerReset extends TimerState {
  TimerReset()
    : super(
        minutes: ConstantValue.defaultMinutes,
        seconds: ConstantValue.defaultSeconds,
      );
}

final class TimerPaused extends TimerState {
  TimerPaused({required super.minutes, required super.seconds});
}
