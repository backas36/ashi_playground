import 'package:ashi_playground/feature/bmi/models/bmi_result.dart';
import 'package:go_router/go_router.dart';

import '../feature/bitcoin_ticker/price_screen.dart';
import '../feature/bmi/bmi_screen.dart';
import '../feature/bmi/result_page.dart';
import '../feature/timer/countdown_screen.dart';
import '../feature/timer/timer_screen.dart';

final router = GoRouter(
  initialLocation: "/bitcoin",
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
    GoRoute(path: "/timer", builder: (context, state) => const TimerScreen()),
    GoRoute(
      path: "/countdown",
      builder: (context, state) => const CountdownScreen(),
    ),
    GoRoute(path: "/bitcoin", builder: (context, state) => const PriceScreen()),
  ],
);
