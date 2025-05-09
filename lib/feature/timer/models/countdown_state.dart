import 'package:freezed_annotation/freezed_annotation.dart';

part 'countdown_state.freezed.dart';

@freezed
abstract class CountdownState with _$CountdownState {
  const factory CountdownState({
    required DateTime endTime,
    required Duration remainingTime,
  }) = _CountdownState;
}
