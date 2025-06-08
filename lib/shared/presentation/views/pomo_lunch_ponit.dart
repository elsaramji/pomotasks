import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pomotasks/config/routes/go_routes.dart';
import 'package:pomotasks/config/themes/colors/app_colors.dart';

class PomoLunchPoint extends StatelessWidget {
  const PomoLunchPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.primaryColorBackground,
          ),
          routerConfig: routerHandeler,
        );
      },
    );
  }
}
