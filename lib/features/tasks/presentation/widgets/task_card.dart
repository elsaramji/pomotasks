import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pomotasks/config/themes/colors/app_colors.dart';
import 'package:pomotasks/config/themes/styles/Buttons/texts_buttons.dart';
import 'package:pomotasks/config/themes/styles/texts/app_texts_styles.dart';
import 'package:pomotasks/features/tasks/data/task_model.dart';
import 'package:pomotasks/features/tasks/presentation/functions/mark_task_done.dart';
import 'package:pomotasks/features/tasks/presentation/functions/marke_as_un_done.dart';
import 'package:pomotasks/features/tasks/presentation/functions/show_Task_Description.dart';

class TaskCard extends StatelessWidget {
  final TaskModel task;

  const TaskCard({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showTaskDescription(context, task);
      },
      child: Container(
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
                Text(task.title, style: AppTextsStyles.lexendMedium16()),
                Text(
                  task.description.length > 10
                      ? '${task.description.substring(0, 10)}...'
                      : task.description,
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
                !task.isDone
                    ? markTaskDone(context, task)
                    : markeAsUnDone(task);
              },
              child: Text(
                task.isDone ? 'UnDone' : 'Done',
                style: AppTextsStyles.lexendMedium14(
                  color: task.isDone
                      ? AppColors.primaryColor
                      : AppColors.primaryColorBackground,
                ),
              ),
              style: AppButtonsStyle.primaryTextButtonStyle(
                backgroundColor: task.isDone
                    ? AppColors.primaryColor2
                    : AppColors.primaryColor,
                width: 95.w,
                hight: 32.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
