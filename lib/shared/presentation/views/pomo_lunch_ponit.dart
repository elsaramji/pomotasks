import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PomoLunchPoint extends StatelessWidget {
  const PomoLunchPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: Center(
              child: Text(
                'PomoTasks',
                style: GoogleFonts.lexend(fontSize: 40.sp),
              ),
            ),
          ),
        );
      },
    );
  }
}
