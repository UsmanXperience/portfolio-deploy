import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SkillWithAnimation extends StatelessWidget {
  final String title;
  final String img;
  final double percent;
  final bool isCircular;

  const SkillWithAnimation({
    super.key,
    required this.title,
    required this.img,
    required this.percent,
    this.isCircular = true,
  });

  @override
  Widget build(BuildContext context) {
    final safePercent = percent.clamp(0.0, 1.0);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Skill Tool
        Image.asset(
          img,
          width: 40,
          height: 40,
          fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace) {
            return Container(
              width: 40,
              height: 40,
              color: Colors.grey,
              child: const Icon(Icons.error, color: Colors.white, size: 20),
            );
          },
        ),
        const SizedBox(height: 8),

        // Progress Indicator
        isCircular
            ? CircularPercentIndicator(
          radius: 32.0,
          lineWidth: 6.0,
          percent: safePercent,
          center: Text(
            "${(safePercent * 100).toInt()}%",
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
          percent: safePercent,
          backgroundColor: Colors.grey.shade800,
          progressColor: Colors.blueAccent,
          barRadius: const Radius.circular(10),
        ),

        const SizedBox(height: 8),

        // Title
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
