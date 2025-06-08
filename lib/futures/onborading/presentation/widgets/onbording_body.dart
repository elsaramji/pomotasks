import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pomotasks/config/themes/colors/app_colors.dart';
import 'package:pomotasks/config/themes/styles/Buttons/full_width_buttons.dart';
import 'package:pomotasks/config/themes/styles/texts/app_texts_styles.dart';
import 'package:pomotasks/core/context/context_exitinion.dart';

class OnboradingBody extends StatelessWidget {
  const OnboradingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          context.spaceVirtical20(),
          Text(
            "Welcome to PomoTasks",
            style: AppTextsStyles.lexendBold28().copyWith(
              color: AppColors.textPrimaryColor,
            ),
          ),
          context.spaceVirtical12(),
          Text(
            "Boost your productivity with the Pomodoro Technique. Work in focused intervals with short breaks.",
            style: AppTextsStyles.lexendRegular16().copyWith(
              color: AppColors.textPrimaryColor,
            ),
            textAlign: TextAlign.center,
          ),
          context.setSpaceVirtical(289),
          TextButton(
            onPressed: () {},
            child: Center(
              child: Text(
                "Get Started",
                style: AppTextsStyles.lexendBold16().copyWith(
                  color: AppColors.textPrimaryColor,
                ),
              ),
            ),
            style: FullWidthButtonsStyles.fullWidthButtonStyle(
              context: context,
              overlayColor: AppColors.primaryColor.withAlpha(20),
              backgroundColor: AppColors.primaryColor2,
            ),
          ),
        ],
      ),
    );
  }
}
