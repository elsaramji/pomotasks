import 'package:flutter/material.dart';
import 'package:pomotasks/config/texts/titles_texts.dart';
import 'package:pomotasks/shared/presentation/widgets/pomo_close_top_app_bar.dart';

class TimerAppBar extends StatelessWidget {
 
  const TimerAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PomoCloseTopAppBar(title: TitlesTexts.timerAppBar);
  }
}
