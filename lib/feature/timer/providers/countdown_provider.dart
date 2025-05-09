import 'dart:async';

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
      _timer?.cancel();
    });

    return CountdownState(
      endTime: endTime,
      remainingTime: endTime.difference(DateTime.now()),
    );
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      state = state.copyWith(
        remainingTime: state.endTime.difference(DateTime.now()),
      );
    });
  }
}
