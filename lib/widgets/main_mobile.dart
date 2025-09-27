import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  Future<void> _openWhatsApp() async {
    const phone = "+923471902927";
    const message = "Hello Usman!";
    final url = "https://wa.me/$phone?text=${Uri.encodeComponent(message)}";
    final uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      debugPrint("Could not open WhatsApp");
    }
  }

  Future<void> _openLinkedIn() async {
    const linkedInUrl = "https://www.linkedin.com/in/usman-azeem-802bab303";
    final uri = Uri.parse(linkedInUrl);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      debugPrint("Could not open LinkedIn");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
      constraints: const BoxConstraints(minHeight: 560.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //  Avatar image
          const CircleAvatar(
            radius: 90,
            backgroundImage: AssetImage("assets/mypic2.jpg"),
            backgroundColor: Colors.white,
          ),
          const SizedBox(height: 25),

          //  Name & Intro
          const Text(
            "Hello I Am Usman Azeem",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 12),

          //  Headline
          const Text(
            "Mobile App Developer | Flutter & Firebase Specialist",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 16),

          //  Paragraph
          const Text(
            "I build reliable, scalable, and user-friendly mobile apps using Flutter & Firebase. "
                "With clean architecture (MVVM), responsive design, and smooth performance, "
                "I deliver cross-platform solutions businesses can trust.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              height: 1.5,
              color: CustomColor.whiteSecondary,
            ),
          ),
          const SizedBox(height: 30),

          //  WhatsApp button
          SizedBox(
            width: 250,
            child: ElevatedButton(
              onPressed: _openWhatsApp,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 20,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                  side: const BorderSide(color: Colors.white, width: 2),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/wattsapp.png',
                    width: 28,
                    height: 28,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Contact US",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),

          //  LinkedIn button
          SizedBox(
            width: 250,
            child: ElevatedButton(
              onPressed: _openLinkedIn,
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF0A66C2),
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 20,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                  side: const BorderSide(color: Colors.white, width: 2),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/linkedin.png',
                    width: 28,
                    height: 28,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Connect Here",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
