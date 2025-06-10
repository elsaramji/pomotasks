part of 'timer_cubit.dart';

@immutable
sealed class TimerState {}

final class TimerInitial extends TimerState {}

final class TimerChanged extends TimerState {
  final int seconds;
  final int minutes;
  TimerChanged({required this.seconds, required this.minutes});
}

final class TimerReset extends TimerState {
  final int seconds;
  final int minutes;
  TimerReset({required this.seconds, required this.minutes});
}
