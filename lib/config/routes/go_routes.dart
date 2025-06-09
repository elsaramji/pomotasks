import 'package:go_router/go_router.dart';
import 'package:pomotasks/futures/onborading/presentation/views/onborading_view.dart';
import 'package:pomotasks/futures/timer/presentation/views/timer_view.dart';

final GoRouter routerHandeler = GoRouter(
  initialLocation: OnboradingView.routeName,
  routes: [
    GoRoute(
      path: OnboradingView.routeName,
      builder: (context, state) => const OnboradingView(),
    ),
    GoRoute(
      path: TimerView.routeName,
      builder: (context, state) => TimerView(),
    ),
  ],
);
