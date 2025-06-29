import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pomotasks/core/di/get_it_di.dart';
import 'package:pomotasks/futures/tasks/presentation/cubit/tasks_data_cubit.dart';
import 'package:pomotasks/futures/tasks/presentation/widgets/add_task_fom.dart';

addTask(BuildContext context) {
  showBottomSheet(
    context: context,
    builder: (context) {
      return BlocProvider.value(
       value: getIt.get<TasksDataCubit>(),
        child: Builder(
          builder: (context) {
            return AddTaskForm();
          },
        ),
      );
    },
  );
}
