




import 'package:go_router/go_router.dart';
import 'package:pomotasks/config/routes/constant_routes.dart';
import 'package:pomotasks/futures/onborading/presentation/views/onborading_view.dart';

final GoRouter routerHandeler = GoRouter(  
  initialLocation: ConstantRoutes.onboarding,
  routes: [
    GoRoute(
      path: ConstantRoutes.onboarding,
      builder: (context, state) => const OnboradingView(),
    ),
]);