import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pomotasks/config/themes/assets/constant_image_path.dart';
import 'package:pomotasks/core/context/context_exitinion.dart';

class OnboardingHeader extends StatelessWidget {
  const OnboardingHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ConstantImagePath.onboradingImage,
      height: 320.h,
      width: context.screenWidth(),
      fit: BoxFit.fill,
    );
  }
}
