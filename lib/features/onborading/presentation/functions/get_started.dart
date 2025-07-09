import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:pomotasks/shared/presentation/views/pomo_main_view.dart';

void getStarted(BuildContext context) {
  context.go(PomoMainView.routeName);
}
