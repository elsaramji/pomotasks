import 'package:flutter/material.dart';
import 'package:pomotasks/config/routes/constant_routes.dart';
import 'package:pomotasks/futures/timer/presentation/widgets/timer_app_bar.dart';
import 'package:pomotasks/futures/timer/presentation/widgets/timer_clock.dart';
import 'package:pomotasks/futures/timer/presentation/widgets/timer_clock_controls.dart';

class TimerView extends StatelessWidget {
  static String routeName = ConstantRoutes.timer;
  const TimerView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [TimerAppBar(), TimerClock(), TimerClockControls()],
          ),
        ),
      ),
    );
  }
}
