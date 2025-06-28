
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddTasksOrder extends StatelessWidget {
  const AddTasksOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Icon(Icons.add_task, size: 72.h),
      ),
    );
  }
}