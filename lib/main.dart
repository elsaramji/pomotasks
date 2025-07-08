import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pomotasks/core/di/get_it_di.dart';
import 'package:pomotasks/core/sources/hive/init_hive.dart';
import 'package:pomotasks/shared/presentation/views/pomo_lunch_ponit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await hiveinit();
  await ScreenUtil.ensureScreenSize();
  setupGetIt();
  runApp(PomoLunchPoint());
}
