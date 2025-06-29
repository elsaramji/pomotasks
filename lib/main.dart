import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:pomotasks/core/di/get_it_di.dart';
import 'package:pomotasks/futures/tasks/data/task_model.dart';
import 'package:pomotasks/shared/presentation/views/pomo_lunch_ponit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await Hive.initFlutter();
  setupGetIt();
  Hive
    ..init(Directory.current.path)
    ..registerAdapter(TaskModelAdapter());
  runApp(PomoLunchPoint());
}
