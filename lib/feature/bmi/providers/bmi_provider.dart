import 'package:ashi_playground/feature/bmi/models/bmi_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ashi_playground/feature/bmi/models/gender.dart';
import 'package:ashi_playground/feature/bmi/models/bmi_result.dart';
//import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:math';

part 'bmi_provider.g.dart';

@riverpod
class BmiCalculator extends _$BmiCalculator {
  @override
  BmiState build() {
    return const BmiState();
  }

  void setGender(Gender gender) {
    state = state.copyWith(gender: gender);
  }

  void setHeight(int height) {
    state = state.copyWith(height: height);
  }

  void incrementWeight() {
    state = state.copyWith(weight: state.weight + 1);
  }

  void decrementWeight() {
    state = state.copyWith(weight: state.weight - 1);
  }

  void incrementAge() {
    state = state.copyWith(age: state.age + 1);
  }

  void decrementAge() {
    state = state.copyWith(age: state.age - 1);
  }

  BMIResult calculateBMI() {
    final bmi = _calculateBMI();

    return BMIResult(
      bmiResult: bmi.toStringAsFixed(1),
      resultText: _getResult(bmi),
      interpretation: _getInterpretation(bmi),
    );
  }

  double _calculateBMI() {
    return state.weight / pow(state.height / 100, 2);
  }

  String _getResult(double bmi) {
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String _getInterpretation(double bmi) {
    if (bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
