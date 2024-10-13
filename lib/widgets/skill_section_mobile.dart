import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/widgets/skill_section_platform_card_mobile.dart';
import 'package:my_portfolio/widgets/skill_section_skill_card_mobile.dart';

class SkillSectionMobile extends StatelessWidget {
  const SkillSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColor.bgDark,
      width: double.infinity, // Full-width container
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, // Center the content horizontally
        children: [
          // Title
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10), // Add left padding
            child: Text(
              'Kỹ năng của mình',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
          ),
          // Platforms and Skills
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch, // Stretch children to fill width
            children: [
              // Platforms
              PlatformCardMobile(),
              SizedBox(height: 10),
              // Skills
              SkillCardMobile(),
              SizedBox(height: 10),
            ],
          ),
        ],
      ),
    );
  }
}