import 'package:audioplayers/audioplayers.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pomotasks/config/themes/assets/constant_audio_path.dart';
import 'package:pomotasks/core/value/constant_value.dart';
import 'package:time/time.dart';

part 'timer_state.dart';

class TimerCubit extends Cubit<TimerState> {
  TimerCubit() : super(TimerInitial());
  bool isPaused = false;
  AudioPlayer audioPlayer = AudioPlayer();
  startTimer({required int minutes, required int seconds}) async {
    isPaused = false;
    while (minutes >= 0 && isPaused == false) {
      emit(TimerInitial());
      await 1.seconds.delay;
      emit(TimerChanged(minutes: minutes, seconds: seconds--));

      if (seconds == 0 && minutes > 0) {
        minutes--;
        seconds = ConstantValue.defaultSeconds;
        emit(TimerChanged(minutes: minutes, seconds: seconds));
      }
      if (minutes <= 0 && seconds < 0) {
        emit(TimerChanged(minutes: 0, seconds: 0));
        await audioPlayer.play(AssetSource(ConstantAudioPath.endSessionMusic));
        break;
      }
    }
  }

  pauseTimer() {
    isPaused = !isPaused;
  }

  resetTimer() async {
    isPaused = true;
    await 1.seconds.delay;
    emit(
      TimerReset(
        seconds: ConstantValue.defaultSeconds,
        minutes: ConstantValue.defaultMinutes,
      ),
    );
  }
}
