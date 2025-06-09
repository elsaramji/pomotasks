import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:pomotasks/futures/timer/presentation/views/timer_view.dart';

void getStarted(BuildContext context) {
  context.go(TimerView.routeName);
}
