import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TimerScreen extends StatelessWidget {
  const TimerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Timer')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            GoRouter.of(context).go('/countdown');
          },
          child: const Text('Countdown'),
        ),
      ),
    );
  }
}
