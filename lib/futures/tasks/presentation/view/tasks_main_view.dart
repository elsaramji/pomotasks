import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pomotasks/futures/tasks/presentation/cubit/tasks_data_cubit.dart';
import 'package:pomotasks/futures/tasks/presentation/widgets/add_tasks_order.dart';
import 'package:pomotasks/futures/tasks/presentation/widgets/task_card.dart';
import 'package:pomotasks/futures/tasks/presentation/widgets/tasks_app_bar.dart';

class TasksMainView extends StatefulWidget {
  const TasksMainView({super.key});

  @override
  State<TasksMainView> createState() => _TasksMainViewState();
}

class _TasksMainViewState extends State<TasksMainView> {
  @override
  Widget build(BuildContext context) {
    context.read<TasksDataCubit>().futchTasksData();
    return BlocConsumer<TasksDataCubit, TasksDataState>(
      listener: (context, state) {
        if (state is! TasksDataStored) {
          context.read<TasksDataCubit>().futchTasksData();
        }
      },
      builder: (context, state) {
        return Column(
          children: [
            TasksAppBar(),
            Expanded(
              child: CustomScrollView(
                slivers: [
                  state.tasks.isEmpty
                      ? SliverFillRemaining(
                          child: AddTasksOrder(),
                        )
                      : SliverList.builder(
                          itemCount: state.tasks.length,
                          itemBuilder: (context, index) =>
                              TaskCard(task: state.tasks[index]),
                        ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

