import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/site_logo.dart';

import '../constants/colors.dart';
import '../constants/nav_items.dart';
import '../styles/style.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key, required this.onNavMenuTap});

  final Function(int) onNavMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white24,borderRadius: BorderRadius.circular(50)),
      child: Row(
        children: [
          Padding(
        padding: const EdgeInsets.only(left: 15.0),
            child: SiteLogo(onTap: () {}),
          ),
          const Spacer(),

          // Generate nav btn
          Row(
            children: List.generate(
              navTitles.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: 20),
                child: TextButton(
                  onPressed: () => onNavMenuTap(index),
                  child: Text(
                    navTitles[index],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: CustomColor.whitePrimary,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
