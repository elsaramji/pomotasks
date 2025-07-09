
import 'package:flutter/material.dart';
import 'package:pomotasks/config/themes/colors/app_colors.dart';
import 'package:pomotasks/config/themes/styles/texts/app_texts_styles.dart';
import 'package:pomotasks/features/tasks/data/task_model.dart';

class ShowTaskDescription extends StatelessWidget {
  const ShowTaskDescription({
    super.key,
    required this.task,
  });

  final TaskModel task;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.primaryColorBackground,
      title: Text(
        task.title,
        style: AppTextsStyles.lexendMedium16(
          color: AppColors.primaryColor3,
        ),
      ),
      content: Text(
        task.description,
        style: AppTextsStyles.lexendRegular16(
          color: AppColors.textPrimaryColor,
        ),
      ),
      actions: [
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: AppColors.primaryColorBackground2,
          ),
          onPressed: () => Navigator.pop(context),
          child: Text(
            'Close',
            style: AppTextsStyles.lexendMedium14(
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
