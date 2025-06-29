import 'package:get_it/get_it.dart';
import 'package:pomotasks/futures/tasks/presentation/cubit/tasks_data_cubit.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<TasksDataCubit>(TasksDataCubit());
}
