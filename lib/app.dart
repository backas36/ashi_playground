import 'package:flutter/material.dart';

import 'routes/router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        sliderTheme: SliderTheme.of(context).copyWith(
          thumbColor: Color(0xFFEB1555),
          inactiveTrackColor: Color(0xFF8D8E98),
          activeTrackColor: Colors.white70,
          overlayColor: Color(0x1fEB1555),
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          secondary: Color(0xFF15161C),
          onSecondary: Colors.white,
        ),
        scaffoldBackgroundColor: Color(0xFFEEEEEE),
        textTheme: TextTheme(bodyMedium: TextStyle(color: Color(0xFF0A0E21))),
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}
