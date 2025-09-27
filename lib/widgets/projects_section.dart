import 'package:flutter/material.dart';
import '../constants/colors.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  final List<Map<String, String>> projects = const [
    {
      "image": "assets/project1.png",
      "title": "Blood Donor App",
      "shortDescription":
          "An app that connects blood donors with patients in need across Pakistan.",
      "description":
          " Problem:\n"
          "In Pakistan, thousands of patients struggle to find the right blood group during medical emergencies. The lack of a quick and reliable system often leads to delays, risking lives.\n\n"
          " Solution:\n"
          "Blood Donor Pakistan bridges the gap between blood donors and patients by providing a real-time, easy-to-use mobile platform that connects them instantly.\n\n"
          "• Features:\n"
          "• Donor registration and profile management\n"
          "• Search donors by blood group and location\n"
          "• Real-time emergency requests and alerts\n"
          "• Donor verification for trustworthiness\n"
          "• Direct contact options with donors\n"
          " Technology Used:\n"
          "The app is built with Flutter for cross-platform compatibility, ensuring smooth performance on both Android and iOS. Firebase is used for real-time database and authentication.\n\n"
          " Result & Impact:\n"
          "This project improves accessibility to lifesaving blood, reduces search time in emergencies, and builds a trustworthy network of verified donors. The ultimate aim is to save lives efficiently and reliably.",
    },

    {
      "image": "assets/project2.png",
      "title": "Voting App",
      "shortDescription":
          "A smart mobile app designed to simplify daily task management and boost productivity.",
      "description":
          " Problem:\n"
          "Many people struggle with managing their daily tasks, reminders, and productivity goals. Without a proper system, tasks are often missed or delayed.\n\n"
          " Solution:\n"
          "Project 2 provides an intuitive mobile app that helps users organize their tasks, set reminders, and track progress effectively — all in one place.\n\n"
          "• Features:\n"
          "• Create, edit, and delete tasks easily\n"
          "• Set reminders and notifications\n"
          "• Categorize tasks by priority or project\n"
          "• Track daily, weekly, and monthly progress\n"
          "• User-friendly dashboard with clean UI\n\n"
          " Technology Used:\n"
          "The app is built using Flutter for cross-platform support (Android & iOS). Firebase is used for cloud storage, authentication, and real-time syncing across devices.\n\n"
          " Result & Impact:\n"
          "This app helps users become more organized and productive by ensuring they never miss important tasks. It increases efficiency and reduces stress in personal and professional life.",
    },

    {
      "image": "assets/project3.png",
      "title": "Wise Crypto App",
      "shortDescription":
          "A modern mobile app to track cryptocurrencies and get real-time updates.",
      "description":
          " Problem:\n"
          "New and experienced investors often struggle to keep track of multiple cryptocurrencies. Prices fluctuate rapidly, and without proper tools, it becomes hard to make informed decisions.\n\n"
          " Solution:\n"
          "Crypto App provides a real-time cryptocurrency tracking platform with price alerts, charts, and portfolio management features. It simplifies crypto monitoring for traders and investors.\n\n"
          " Features:\n"
          " • Real-time price updates for popular cryptocurrencies\n"
          " • Add coins to your portfolio and track gains/losses\n"
          " • Interactive charts with daily, weekly, and monthly trends\n"
          " • Price alerts and push notifications for market changes\n"
          " • Simple and modern UI for smooth user experience\n\n"
          " Technology Used:\n"
          "The app is built with Flutter for cross-platform support (Android & iOS). REST APIs are integrated for fetching crypto market data. Firebase is used for authentication and cloud sync.\n\n"
          " Result & Impact:\n"
          "Crypto App empowers users to stay updated with the fast-changing crypto market. It improves decision-making, reduces risk of missing opportunities, and helps users manage portfolios effectively.",
    },
  ];

  void _showProjectDetail(BuildContext context, Map<String, String> project) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: Colors.grey[900],
        title: Text(
          project["title"]!,
          style: const TextStyle(color: Colors.white),
        ),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.5,
                  maxWidth: MediaQuery.of(context).size.width * 0.9,
                ),
                child: Image.asset(project["image"]!, fit: BoxFit.contain),
              ),
              const SizedBox(height: 20),
              Text(
                project["description"]!,
                style: const TextStyle(color: Colors.white70, fontSize: 14),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: const Text(
              "Close",
              style: TextStyle(color: Colors.greenAccent),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final projectWidth = screenWidth < 600
        ? screenWidth * 0.9
        : screenWidth < 900
        ? screenWidth * 0.45
        : 320.0;

    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          // Heading
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(
                width: 80,
                child: Divider(
                  color: CustomColor.whitePrimary,
                  thickness: 1,
                  endIndent: 10,
                ),
              ),
              Text(
                "My Projects",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
              SizedBox(
                width: 80,
                child: Divider(
                  color: CustomColor.whitePrimary,
                  thickness: 1,
                  indent: 10,
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),

          // Projects Grid
          Wrap(
            spacing: 25,
            runSpacing: 25,
            children: [
              for (int i = 0; i < projects.length; i++)
                GestureDetector(
                  onTap: () => _showProjectDetail(context, projects[i]),
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      width: projectWidth,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: CustomColor.bgLight2,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                            ),
                            child: Image.asset(
                              projects[i]["image"]!,
                              width: projectWidth,
                              height: 220,
                              fit: BoxFit.cover,
                            ),
                          ),
                          // Title + GitHub Icon
                          Padding(
                            padding: const EdgeInsets.fromLTRB(12, 12, 12, 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  projects[i]["title"]!,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: CustomColor.whitePrimary,
                                  ),
                                ),
                                Image.asset(
                                  'assets/github.png',
                                  height: 30,
                                  width: 30,
                                ),
                              ],
                            ),
                          ),
                          // Short Description
                          Padding(
                            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
                            child: Text(
                              projects[i]["shortDescription"]!,
                              style: const TextStyle(
                                fontSize: 13,
                                color: CustomColor.whiteSecondary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
