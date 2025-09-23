import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProgressBar extends StatelessWidget {
  final double percent;
  final bool isCircular;

  const ProgressBar({
    super.key,
    required this.percent,
    this.isCircular = true,
  });

  @override
  Widget build(BuildContext context) {
    return isCircular
        ? CircularPercentIndicator(
      radius: 32.0,
      lineWidth: 6.0,
      percent: percent,
      center: Text(
        "${(percent * 100).toInt()}%",
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 11,
        ),
      ),
      progressColor: Colors.green,
      backgroundColor: Colors.grey.shade800,
      circularStrokeCap: CircularStrokeCap.round,
    )
        : LinearPercentIndicator(
      width: 120,
      lineHeight: 8.0,
      percent: percent,
      backgroundColor: Colors.grey.shade800,
      progressColor: Colors.blueAccent,
      barRadius: const Radius.circular(10),
    );
  }
}
