import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pomotasks/config/themes/colors/app_colors.dart';
import 'package:pomotasks/core/context/context_exitinion.dart';

class FullWidthButtonsStyles {
  static ButtonStyle fullWidthButtonStyle({
    required BuildContext context,
    Color? backgroundColor,
    Color? overlayColor,
  }) => ButtonStyle(
    backgroundColor: WidgetStatePropertyAll<Color>(
      backgroundColor ?? AppColors.primaryColor,
    ),
    minimumSize: WidgetStatePropertyAll<Size>(
      Size(context.screenWidth(), 48.h),
    ),
    shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
    ),
    overlayColor: WidgetStatePropertyAll<Color>(
      overlayColor ?? AppColors.primaryColor2.withAlpha(50),
    ),
  );
}
