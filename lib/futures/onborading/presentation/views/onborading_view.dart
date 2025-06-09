import 'package:flutter/material.dart';
import 'package:pomotasks/config/routes/constant_routes.dart';
import 'package:pomotasks/futures/onborading/presentation/widgets/onbording_body.dart';
import 'package:pomotasks/futures/onborading/presentation/widgets/onbording_header.dart';

class OnboradingView extends StatelessWidget {
  const OnboradingView({super.key});
  static const routeName = ConstantRoutes.onboarding;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Header as image
          OnboardingHeader(),
          // Body as widgets
          OnboradingBody(),
        ],
      ),
    );
  }
}
