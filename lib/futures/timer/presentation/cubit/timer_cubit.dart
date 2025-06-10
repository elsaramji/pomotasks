import 'package:audioplayers/audioplayers.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pomotasks/config/themes/assets/constant_audio_path.dart';
import 'package:pomotasks/core/value/constant_value.dart';
import 'package:time/time.dart';
part 'timer_state.dart';

class TimerCubit extends Cubit<TimerState> {
  TimerCubit() : super(TimerInitial());
  // timer state
  bool isPaused = false;
  // audio player
  AudioPlayer audioPlayer = AudioPlayer();
  // start timer
  startTimer({required int minutes, required int seconds}) async {
    isPaused = false;
    while (minutes >= 0 && isPaused == false) {
      // seconds--;
      emit(TimerInitial());
      emit(TimerChanged(minutes: minutes, seconds: seconds--));
      await 1.seconds.delay;
      // minutes--;
      if (seconds == 0 && minutes > 0) {
        minutes--;
        seconds = ConstantValue.defaultSeconds;
        emit(TimerChanged(minutes: minutes, seconds: seconds));
      }
      // finish and  play music
      if (minutes <= 0 && seconds < 0) {
        emit(TimerChanged(minutes: 0, seconds: 0));
        await audioPlayer.play(AssetSource(ConstantAudioPath.endSessionMusic));
        break;
      }
    }
  }

  // pause timer
  pauseTimer() {
    isPaused = !isPaused;
  }

  // reset timer
  resetTimer() async {
    isPaused = true;
    emit(
      TimerReset(
        seconds: ConstantValue.defaultSeconds,
        minutes: ConstantValue.defaultMinutes,
      ),
    );
  }
}
