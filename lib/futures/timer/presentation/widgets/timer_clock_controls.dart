import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pomotasks/config/texts/buttons_texts.dart';
import 'package:pomotasks/config/themes/colors/app_colors.dart';
import 'package:pomotasks/config/themes/styles/Buttons/texts_buttons.dart';
import 'package:pomotasks/config/themes/styles/texts/app_texts_styles.dart';

class TimerClockControls extends StatelessWidget {
  final VoidCallback startTimer;
  final VoidCallback pauseTimer;
  final VoidCallback restTimer;
  const TimerClockControls({
    required this.startTimer,
    required this.pauseTimer,
    required this.restTimer,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: startTimer,
                child: Text(
                  ButtonsTexts.start,
                  style: AppTextsStyles.lexendBold16(
                    color: AppColors.primaryColorBackground,
                  ),
                ),
                style: AppButtonsStyle.primaryTextButtonStyle(
                  width: 170.w,
                  hight: 40.h,
                ),
              ),
              TextButton(
                onPressed: pauseTimer,
                child: Text(
                  ButtonsTexts.pause,
                  style: AppTextsStyles.lexendBold16(),
                ),
                style: AppButtonsStyle.primaryTextButtonStyle(
                  backgroundColor: AppColors.boxsPrimaryColor,
                  width: 170.w,
                  hight: 40.h,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.h),
            child: TextButton(
              onPressed: restTimer,
              child: Text(
                ButtonsTexts.reset,
                style: AppTextsStyles.lexendBold14(),
              ),
              style: AppButtonsStyle.primaryTextButtonStyle(
                backgroundColor: AppColors.primaryColorBackground,
                hight: 40.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
