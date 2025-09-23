import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants/colors.dart';
import 'custom_text_field.dart';
import 'dart:html' as html;

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      margin: const EdgeInsets.symmetric(horizontal: 30),
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      decoration: BoxDecoration(
        color: CustomColor.bgLight1,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // title
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(
                width: 65,
                child: Divider(
                  color: CustomColor.whitePrimary,
                  thickness: 1,
                  endIndent: 10,
                ),
              ),
              Text(
                "Explore More?",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                width: 65,
                child: Divider(
                  color: CustomColor.whitePrimary,
                  thickness: 1,
                  indent: 10,
                ),
              ),
            ],
          ),

          const SizedBox(height: 50),

          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700, maxHeight: 100),
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth >= kMinDesktopWidth) {
                  return buildNameEmailFieldDesktop();
                }
                return buildNameEmailFieldMobile();
              },
            ),
          ),

          const SizedBox(height: 15),

          // message
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: const CustomTextField(
              hintText: "Your message",
              maxLines: 16,
            ),
          ),

          const SizedBox(height: 20),

          // send button
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: const BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                ),
                onPressed: () {
                  final Uri emailUri = Uri(
                    scheme: 'mailto',
                    path: 'usmanazee933@gmail.com',
                    query: 'subject=Contact&body=Hello Usman, I want to reach you.',
                  );
                  launchUrl(emailUri);
                },
                child: const Text(
                  "Send",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),

          const SizedBox(height: 30),

          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 300),
            child: const Divider(),
          ),

          const SizedBox(height: 15),

          // SNS icon button links
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              // GitHub
              InkWell(
                onTap: () {
                  html.window.open(
                    "https://github.com/UsmanXperience",
                    "_blank",
                  );
                },
                child: Image.asset("assets/github.png", width: 30),
              ),

              // LinkedIn
              InkWell(
                onTap: () {
                  html.window.open(
                    "https://www.linkedin.com/in/usman-azeem-802bab303?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app",
                    "_blank",
                  );
                },
                child: Image.asset("assets/linkedin.png", width: 30),
              ),

              // Facebook
              InkWell(
                onTap: () {
                  html.window.open(
                    "https://www.facebook.com/share/12KVjeDdZYP/",
                    "_blank",
                  );
                },
                child: Image.asset("assets/facebook.png", width: 30),
              ),

              // Instagram
              InkWell(
                onTap: () {
                  html.window.open(
                    "https://www.instagram.com/usmanazeem20?igsh=MWRpdDcxczJqdnNmNQ==",
                    "_blank",
                  );
                },
                child: Image.asset("assets/instagram.png", width: 30),
              ),

              // email
              InkWell(
                onTap: () {
                  html.window.open(
                    "mailto:usmanazee933@gmail.com?subject=Contact&body=Hello Usman,",
                    "_blank",
                  );
                },
                child: const Icon(Icons.email, color: Colors.white, size: 30),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Row buildNameEmailFieldDesktop() {
    return Row(
      children: const [
        Flexible(child: CustomTextField(hintText: "Your name")),
        SizedBox(width: 15),
        Flexible(child: CustomTextField(hintText: "Your email")),
      ],
    );
  }

  Column buildNameEmailFieldMobile() {
    return Column(
      children: const [
        Flexible(child: CustomTextField(hintText: "Your name")),
        SizedBox(height: 15),
        Flexible(child: CustomTextField(hintText: "Your email")),
      ],
    );
  }
}
