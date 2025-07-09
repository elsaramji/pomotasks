import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pomotasks/config/themes/colors/app_colors.dart';
import 'package:pomotasks/config/themes/styles/texts/app_texts_styles.dart';
import 'package:pomotasks/core/context/context_exitinion.dart';

class TimerClockItem extends StatelessWidget {
  final String value;
  final String title;
  const TimerClockItem({super.key, required this.value, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 56.h,
          width: 171.w,
          child: Center(
            child: Text(value, style: AppTextsStyles.lexendBold18()),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: AppColors.boxsPrimaryColor,
          ),
        ),
        context.spaceVirtical16(),
        Text(title, style: AppTextsStyles.lexendRegular14()),
      ],
    );
  }
}

