import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoTasksInData extends StatelessWidget {
  const NoTasksInData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Icon(Icons.add_task, size: 72.h)),
    );
  }
}
