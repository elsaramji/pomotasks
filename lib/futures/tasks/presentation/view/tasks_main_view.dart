import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pomotasks/futures/tasks/presentation/cubit/tasks_data_cubit.dart';
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
    return BlocConsumer<TasksDataCubit, TasksDataState>(
      listener: (context, state) {
        if (state is! TasksDataStored) {
          context.read<TasksDataCubit>().futchTasksData();
        }
      },
      builder: (context, state) {
        context.read<TasksDataCubit>().futchTasksData();
        return Column(
          children: [
            TasksAppBar(),
            Expanded(
              child: CustomScrollView(
                slivers: [
                  state.tasks.isEmpty
                      ? const SliverToBoxAdapter(
                          child: Center(child: Text("Go add some tasks")),
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
