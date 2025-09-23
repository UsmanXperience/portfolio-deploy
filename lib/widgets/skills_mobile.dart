import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/skill_items.dart';
import 'skills_with_animation.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  // Section Title
  Widget buildSectionTitle(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          width: 60,
          child: Divider(
            color: Colors.white54,
            thickness: 1,
            endIndent: 10,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: 60,
          child: Divider(
            color: Colors.white54,
            thickness: 1,
            indent: 10,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 500.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Platforms
            buildSectionTitle("Platforms"),
            const SizedBox(height: 20),
            for (int i = 0; i < platformItems.length; i++)
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[600],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 20.0,
                  ),
                  leading: Image.asset(platformItems[i]["img"], width: 26.0),
                  title: Text(
                    platformItems[i]["title"],
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),

            const SizedBox(height: 30),

            // Tools
            buildSectionTitle("Tools"),
            const SizedBox(height: 20),
            for (int i = 0; i < toolItems.length; i++)
              Container(
                margin: const EdgeInsets.only(bottom: 15),
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[600],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(toolItems[i]["img"], width: 26, height: 26),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            toolItems[i]["title"],
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: LinearProgressIndicator(
                            value: toolItems[i]["percent"] ?? 0.0,

                            color: Colors.green,
                            minHeight: 8,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "${((toolItems[i]["percent"] ?? 0.0) * 100).toInt()}%",
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

            const SizedBox(height: 30),

            // Skills
            buildSectionTitle("Skills"),
            const SizedBox(height: 20),
            Wrap(
              spacing: 16,
              runSpacing: 16,
              alignment: WrapAlignment.center,
              children: [
                for (int i = 0; i < skillItems.length; i++)
                  SkillWithAnimation(
                    title: skillItems[i]["title"],
                    img: skillItems[i]["img"],
                    percent: skillItems[i]["percent"],
                    isCircular: true,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
