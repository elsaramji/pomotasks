import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pomotasks/config/themes/colors/app_colors.dart';
import 'package:pomotasks/config/themes/styles/texts/app_texts_styles.dart';

class PomoTextFormFeild extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final int maxLines;
  final double? padding;

  PomoTextFormFeild({
    super.key,
    this.controller,
    this.hintText,
    required this.maxLines,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      minLines: 1,
      maxLines: maxLines,
      cursorColor: AppColors.primaryColor,
      style: AppTextsStyles.lexendRegular16(color: AppColors.primaryColor3),
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: padding ?? 16.h,
          horizontal: 8.w,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(12.r)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(12.r)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(12.r)),
        ),
        filled: true,
        fillColor: AppColors.backgroundTextField,
        hintText: hintText,

        hintStyle: AppTextsStyles.lexendRegular16(
          color: AppColors.primaryColor3,
        ),
      ),
    );
  }
}
