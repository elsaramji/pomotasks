import 'package:go_router/go_router.dart';
import 'package:pomotasks/futures/onborading/presentation/views/onborading_view.dart';
import 'package:pomotasks/shared/presentation/views/pomo_main_view.dart';

final GoRouter routerHandeler = GoRouter(
  initialLocation: OnboradingView.routeName,
  routes: [
    GoRoute(
      path: OnboradingView.routeName,
      builder: (context, state) => const OnboradingView(),
    ),
    GoRoute(
      path: PomoMainView.routeName,
      builder: (context, state) => const PomoMainView(),
    ),
  ],
);
