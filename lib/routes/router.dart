import 'package:ashi_playground/feature/bmi/models/bmi_result.dart';
import 'package:go_router/go_router.dart';

import '../feature/bmi/bmi_screen.dart';
import '../feature/bmi/result_page.dart';

final router = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(path: '/', builder: (context, state) => const BmiScreen()),
    GoRoute(
      path: '/result',
      builder: (context, state) {
        final bmiResult = state.extra as BMIResult;
        return ResultPage(
          bmiResult: bmiResult.bmiResult,
          resultText: bmiResult.resultText,
          interpretation: bmiResult.interpretation,
        );
      },
    ),
  ],
);
