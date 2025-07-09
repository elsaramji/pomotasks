import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pomotasks/config/themes/colors/app_colors.dart';
import 'package:pomotasks/config/themes/styles/texts/app_texts_styles.dart';
import 'package:pomotasks/core/context/context_exitinion.dart';
import 'package:pomotasks/features/tasks/presentation/functions/add_task.dart';

class TasksAppBar extends StatelessWidget {
  const TasksAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth(),
      height: 72.h,
      padding: EdgeInsets.only(top: 16.h, bottom: 8.h, left: 16.w, right: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Center(child: Text('Tasks', style: AppTextsStyles.lexendBold18())),
          const Spacer(),
          IconButton(
            onPressed: () {
              // TODO: Add Task
              addTask(context);
            },
            icon: Icon(
              Icons.add,
              size: 24.sp,
              color: AppColors.textPrimaryColor,
            ),
            style: IconButton.styleFrom(
              foregroundColor: AppColors.primaryColor2,
            ),
          ),
        ],
      ),
    );
  }
}
