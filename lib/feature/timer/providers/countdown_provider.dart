import 'dart:async';
import 'dart:developer';

import 'package:ashi_playground/feature/timer/models/countdown_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'countdown_provider.g.dart';

@riverpod
class Countdown extends _$Countdown {
  Timer? _timer;

  @override
  CountdownState build() {
    final endTime = DateTime.now().add(const Duration(hours: 1));
    _startTimer();

    ref.onDispose(() {
      log('onDispose');
      _timer?.cancel();
    });

    return CountdownState(
      endTime: endTime,
      remainingTime: endTime.difference(DateTime.now()),
    );
  }

  void _startTimer() {
    _timer?.cancel();
    log('startTimer');
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      log('timer tick');
      state = state.copyWith(
        remainingTime: state.endTime.difference(DateTime.now()),
      );
    });
  }
}
