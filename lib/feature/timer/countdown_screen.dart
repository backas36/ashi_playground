import 'dart:async';

import 'package:flutter/material.dart';

class CountdownScreen extends StatefulWidget {
  const CountdownScreen({super.key});
  @override
  State<CountdownScreen> createState() => _CountdownScreenState();
}

class _CountdownScreenState extends State<CountdownScreen> {
  Timer? _timer;
  final DateTime endTime = DateTime.now().add(const Duration(hours: 1));

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Countdown')),
      body: Center(
        child: Column(
          children: [
            Text("${endTime.difference(DateTime.now())}"),
            Text("${endTime.difference(DateTime.now())}"),
            Text("${endTime.difference(DateTime.now())}"),
            Text("${endTime.difference(DateTime.now())}"),
            Text("${endTime.difference(DateTime.now())}"),
            Text("${endTime.difference(DateTime.now())}"),
            Text("${endTime.difference(DateTime.now())}"),
            Text("${endTime.difference(DateTime.now())}"),
            Text("${endTime.difference(DateTime.now())}"),
          ],
        ),
      ),
    );
  }
}
