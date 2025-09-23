import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      constraints: const BoxConstraints(minHeight: 400.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //  Left Side
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Name
                const Text(
                  "Hello I Am Usman Azeem",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: CustomColor.whitePrimary,
                  ),
                ),
                const SizedBox(height: 10),

                // Headline
                const Text(
                  "Mobile App Developer | Flutter & Firebase Specialist | Building Modern Digital Experiences",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: CustomColor.whitePrimary,
                  ),
                ),
                const SizedBox(height: 15),

                // Paragraph
                const Text(
                  "With a strong focus on Flutter and Firebase, I develop reliable, scalable, "
                      "and user-friendly mobile applications. My approach combines clean architecture (MVVM), "
                      "responsive design, and smooth performance to deliver innovative cross-platform solutions "
                      "that businesses can trust.",
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.5,
                    color: CustomColor.whiteSecondary,
                  ),
                ),
                const SizedBox(height: 30),

                // Buttons Row
                Row(
                  children: [
                    // LinkedIn
                    ElevatedButton(
                      onPressed: () {
                        const linkedInUrl =
                            "https://www.linkedin.com/in/usman-azeem-802bab303";
                        launchUrl(
                          Uri.parse(linkedInUrl),
                          mode: LaunchMode.externalApplication,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0A66C2),
                        padding: const EdgeInsets.symmetric(
                          vertical: 14,
                          horizontal: 24,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/linkedin.png',
                            width: 22,
                            height: 22,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            "LinkedIn",
                            style: TextStyle(
                                fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 15),

                    //  WhatsApp
                    ElevatedButton(
                      onPressed: () async {
                        const phone = "+923471902927";
                        const message = "Hello Usman!";
                        final url =
                            "https://wa.me/$phone?text=${Uri.encodeComponent(message)}";

                        final uri = Uri.parse(url);
                        if (await canLaunchUrl(uri)) {
                          await launchUrl(
                            uri,
                            mode: LaunchMode.externalApplication,
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: const EdgeInsets.symmetric(
                          vertical: 14,
                          horizontal: 24,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/wattsapp.png',
                            width: 22,
                            height: 22,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            "Contact Us",
                            style: TextStyle(
                                fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(width: 40),

          //  avaitor pic
          const CircleAvatar(
            radius: 140,
            backgroundImage: AssetImage("assets/mypic.jpg"),
          ),
        ],
      ),
    );
  }
}
