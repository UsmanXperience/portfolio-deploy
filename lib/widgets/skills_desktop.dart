import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/skills_with_animation.dart';

import '../constants/colors.dart';
import '../constants/skill_items.dart';



class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  Widget buildSectionTitle(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          width: 80,
          child: Divider(
            color: Colors.white54,
            thickness: 1,
            endIndent: 10,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: 80,
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
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Platforms Section
            buildSectionTitle("Platforms"),
            const SizedBox(height: 25),
            Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              alignment: WrapAlignment.center,
              children: [
                for (int i = 0; i < platformItems.length; i++)
                  Container(
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey[600],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 10.0,
                      ),
                      leading: Image.asset(
                        platformItems[i]["img"],
                        width: 30,
                        height: 30,
                        fit: BoxFit.contain,
                      ),
                      title: Text(
                        platformItems[i]["title"],
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
              ],
            ),

            const SizedBox(height: 40),

            // Tools Section
            buildSectionTitle("Tools"),
            const SizedBox(height: 25),
            Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              alignment: WrapAlignment.center,
              children: [
                for (int i = 0; i < toolItems.length; i++)
                  Container(
                    width: 200,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey[600],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              toolItems[i]["img"],
                              width: 30,
                              height: 30,
                              fit: BoxFit.contain,
                            ),
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
              ],
            ),

            const SizedBox(height: 40),

            // Skills Section
            buildSectionTitle("Skills"),
            const SizedBox(height: 25),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 600),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 20.0,
                  crossAxisSpacing: 20.0,
                  childAspectRatio: 0.9,
                ),
                itemCount: skillItems.length,
                itemBuilder: (context, index) {
                  return SkillWithAnimation(
                    title: skillItems[index]["title"],
                    img: skillItems[index]["img"],
                    percent: skillItems[index]["percent"],
                    isCircular: true,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
