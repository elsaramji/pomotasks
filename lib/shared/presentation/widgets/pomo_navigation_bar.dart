
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pomotasks/config/themes/colors/app_colors.dart';
import 'package:pomotasks/shared/presentation/values/texts/texts_values.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class PomoNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  const PomoNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryColorBackground,
        border: Border.all(color: AppColors.boxsStroke),
      ),
      child: SalomonBottomBar(
        currentIndex: currentIndex,
        onTap: onTap,
        items: [
          SalomonBottomBarItem(
            icon: Icon(Icons.timer, size: 24.sp),
            title: const Text(ConstantsTextsValues.pomodoro),
            unselectedColor: AppColors.textPrimaryColor,
            selectedColor: AppColors.primaryColor,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.task, size: 24.sp),
            title: const Text(ConstantsTextsValues.tasks),
            unselectedColor: AppColors.textPrimaryColor,
            selectedColor: AppColors.primaryColor,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.analytics, size: 24.sp),
            title: const Text(ConstantsTextsValues.analytics),
            unselectedColor: AppColors.textPrimaryColor,
            selectedColor: AppColors.primaryColor,
          ),
        ],
      ),
    );
  }
}
