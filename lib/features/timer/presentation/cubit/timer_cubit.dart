
import 'package:audioplayers/audioplayers.dart';
import 'package:bloc/bloc.dart';
import 'package:pomotasks/config/themes/assets/constant_audio_path.dart';
import 'package:pomotasks/core/value/constant_value.dart';
import 'package:time/time.dart';
part 'timer_state.dart';

class TimerCubit extends Cubit<TimerState> {
  TimerCubit() : super(TimerInitial());
  // timer state
  bool isPaused = false;
  bool isWorking = false;
  // audio player
  AudioPlayer audioPlayer = AudioPlayer();
  // start timer
  startTimer() async {
    isPaused = false;
    if (!isWorking) {
      await downTimer(state.minutes, state.seconds);
    }
  }

  // pause timer
  pauseTimer() {
    isPaused = true;
    isWorking = false;
    emit(TimerPaused(minutes: state.minutes, seconds: state.seconds));
  }

  // reset timer
  resetTimer() async {
    isPaused = true;
    isWorking = false;
    emit(TimerReset());
  }

  Future<void> downTimer(int minutes, int seconds) async {
    while (minutes >= 0 && isPaused == false) {
      // seconds--;
      emit(TimerChanged(minutes: minutes, seconds: seconds--));
      isWorking = true;
      await 1.seconds.delay;
      // minutes--;
      if (seconds == 0 && minutes > 0) {
        seconds += 59;
        emit(TimerChanged(minutes: minutes--, seconds: seconds));
      }
      // finish and  play music
      if (minutes <= 0 && seconds <= 0) {
        emit(TimerInitial());
        isWorking=false;
        await audioPlayer.play(AssetSource(ConstantAudioPath.endSessionMusic));
        break;
      }
    }
  }
}
