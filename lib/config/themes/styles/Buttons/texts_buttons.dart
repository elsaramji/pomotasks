import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pomotasks/config/themes/colors/app_colors.dart';

class AppButtonsStyle {
  static ButtonStyle primaryTextButtonStyle({
    Color? backgroundColor,
    Color? overlayColor,
    double? hight,
    double? width,
  }) => TextButton.styleFrom(
    backgroundColor: backgroundColor ?? AppColors.primaryColor,
    overlayColor: overlayColor ?? AppColors.primaryColor2.withAlpha(50),
    minimumSize: Size(width ?? double.infinity, hight ?? 48.h),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
  );
}
