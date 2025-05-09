import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ashi_playground/feature/bmi/models/gender.dart';

part 'bmi_state.freezed.dart';

@freezed
abstract class BmiState with _$BmiState {
  const factory BmiState({
    Gender? gender,
    @Default(150) int height, // 添加預設值
    @Default(50) int weight, // 添加預設值
    @Default(31) int age, // 添加預設值
  }) = _BmiState;
}
