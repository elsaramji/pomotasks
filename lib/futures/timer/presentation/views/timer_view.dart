import 'package:flutter/material.dart';
import 'package:pomotasks/config/routes/constant_routes.dart';
import 'package:pomotasks/futures/timer/presentation/functions/close.dart';
import 'package:pomotasks/futures/timer/presentation/widgets/timer_app_bar.dart';
import 'package:pomotasks/futures/timer/presentation/widgets/timer_clock.dart';

class TimerView extends StatelessWidget {
  static String routeName = ConstantRoutes.timer;
  const TimerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TimerAppBar(onClose: () => close(context)),
              TimerClock(),
            ],
          ),
        ),
      ),
    );
  }
}
