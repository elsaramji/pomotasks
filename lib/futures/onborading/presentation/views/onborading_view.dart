import 'package:flutter/material.dart';
import 'package:pomotasks/config/routes/constant_routes.dart';
import 'package:pomotasks/config/themes/colors/app_colors.dart';
import 'package:pomotasks/config/themes/styles/texts/app_texts_styles.dart';

class OnboradingView extends StatelessWidget {
  const OnboradingView({super.key});
  static const routeName = ConstantRoutes.onboarding;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Onborading',
          style: AppTextsStyles.lexendBold24.copyWith(
            color: AppColors.textPrimaryColor,
          ),
        ),
      ),
    );
  }
}
