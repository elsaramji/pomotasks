import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pomotasks/config/themes/colors/app_colors.dart';
import 'package:pomotasks/config/themes/styles/Buttons/texts_buttons.dart';
import 'package:pomotasks/config/themes/styles/texts/app_texts_styles.dart';
import 'package:pomotasks/core/context/context_exitinion.dart';
import 'package:pomotasks/shared/presentation/widgets/pomo_text%20form_feild.dart';

class AddTaskSheetBody extends StatelessWidget {
  final TextEditingController taskNameController = TextEditingController();
  final TextEditingController taskDescriptionController = TextEditingController();
   AddTaskSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight() * 0.5,
      width: context.screenWidth(),
      margin: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      color: AppColors.primaryColorBackground,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: CustomScrollView(
          reverse: true,
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                spacing: 16.h,
                children: [
                  PomoTextFormFeild(
                    maxLines: 1,
                    controller: taskNameController,
                    hintText: 'Task Name',
                  ),
                  PomoTextFormFeild(
                    maxLines: 5,
                    padding: 72.h,
                    controller: taskDescriptionController,
                    hintText: 'Task Description',
                  ),
                  Spacer(),
                  
                  ElevatedButton(
                    onPressed: () {
                      // TODO: save Task
                    },
                    child: Text(
                      'Add',
                      style: AppTextsStyles.lexendMedium16(
                        color: AppColors.primaryColorBackground,
                      ),
                    ),
                    style: AppButtonsStyle.primaryTextButtonStyle(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
