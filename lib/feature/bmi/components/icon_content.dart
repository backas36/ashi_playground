import 'package:ashi_playground/feature/bmi/constants.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  const IconContent({super.key, required this.icon, required this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80.0, color: Colors.white),
        SizedBox(height: 15.0),
        Text(label, style: labelTextStyle),
      ],
    );
  }
}
