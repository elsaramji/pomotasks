import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pomotasks/config/routes/constant_routes.dart';
import 'package:pomotasks/futures/timer/presentation/cubit/timer_cubit.dart';
import 'package:pomotasks/shared/presentation/values/screens/app_screens_list.dart';
import 'package:pomotasks/shared/presentation/widgets/pomo_navigation_bar.dart';

class PomoMainView extends StatefulWidget {
  static const String routeName = ConstantRoutes.pomoMainView;
  const PomoMainView({super.key});

  @override
  State<PomoMainView> createState() => _PomoMainViewState();
}

class _PomoMainViewState extends State<PomoMainView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TimerCubit(),
      child: Scaffold(
        bottomNavigationBar: PomoNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
        body: SafeArea(child: screens[selectedIndex]),
      ),
    );
  }
}
