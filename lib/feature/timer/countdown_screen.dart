import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'providers/countdown_provider.dart';

class CountdownScreen extends ConsumerWidget {
  const CountdownScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final remainingTime = ref.watch(
      countdownProvider.select((state) => state.remainingTime),
    );
    return Scaffold(
      appBar: AppBar(title: const Text('Countdown')),
      body: Center(
        child: Column(
          children: [
            Text(remainingTime.toString()),
            Text(remainingTime.toString()),
            Text(remainingTime.toString()),
            Text(remainingTime.toString()),
            Text(remainingTime.toString()),
            Text(remainingTime.toString()),
            Text(remainingTime.toString()),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).go('/timer');
              },
              child: const Text('Start Timer'),
            ),
          ],
        ),
      ),
    );
  }
}
