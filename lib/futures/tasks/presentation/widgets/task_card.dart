import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pomotasks/config/themes/colors/app_colors.dart';
import 'package:pomotasks/config/themes/styles/Buttons/texts_buttons.dart';
import 'package:pomotasks/config/themes/styles/texts/app_texts_styles.dart';
import 'package:pomotasks/futures/tasks/presentation/functions/mark_task_done.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      height: 72.h,
      child: Row(
        children: [
          Container(
            height: 48.h,
            width: 48.w,
            margin: EdgeInsets.only(right: 16.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: AppColors.boxsPrimaryColor,
            ),
            child: Icon(
              Icons.list,
              size: 24.sp,
              color: AppColors.textPrimaryColor,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Task title', style: AppTextsStyles.lexendMedium16()),
              Text(
                'Task description',
                style: AppTextsStyles.lexendRegular16(
                  color: AppColors.primaryColor3,
                ),
              ),
            ],
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              // TODO
              markTaskDone();
            },
            child: Text(
              'Done',
              style: AppTextsStyles.lexendMedium14(
                color: AppColors.primaryColorBackground,
              ),
            ),
            style: AppButtonsStyle.primaryTextButtonStyle(
              backgroundColor: AppColors.primaryColor,
              width: 95.w,
              hight: 32.h,
            ),
          ),
        ],
      ),
    );
  }
}
