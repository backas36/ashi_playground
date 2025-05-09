import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
          ],
        ),
      ),
    );
  }
}
