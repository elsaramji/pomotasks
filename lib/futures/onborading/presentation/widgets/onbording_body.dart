import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pomotasks/config/texts/buttons_texts.dart';
import 'package:pomotasks/config/texts/normal_texts.dart';
import 'package:pomotasks/config/themes/colors/app_colors.dart';
import 'package:pomotasks/config/themes/styles/Buttons/texts_buttons.dart';
import 'package:pomotasks/config/themes/styles/texts/app_texts_styles.dart';
import 'package:pomotasks/core/context/context_exitinion.dart';
import 'package:pomotasks/futures/onborading/presentation/functions/get_started.dart';

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
            NormalTexts.welcome,
            style: AppTextsStyles.lexendBold28().copyWith(
              color: AppColors.textPrimaryColor,
            ),
          ),
          context.spaceVirtical12(),
          Text(
            NormalTexts.description,
            style: AppTextsStyles.lexendRegular16().copyWith(
              color: AppColors.textPrimaryColor,
            ),
            textAlign: TextAlign.center,
          ),
          context.setSpaceVirtical(289),
          TextButton(
            onPressed: () {
              getStarted(context);
            },
            child: Center(
              child: Text(
                ButtonsTexts.getStarted,
                style: AppTextsStyles.lexendBold16().copyWith(
                  color: AppColors.textPrimaryColor,
                ),
              ),
            ),
            style: AppButtonsStyle.primaryTextButtonStyle(
              overlayColor: AppColors.primaryColor.withAlpha(20),
              backgroundColor: AppColors.primaryColor2,
            ),
          ),
        ],
      ),
    );
  }
}
