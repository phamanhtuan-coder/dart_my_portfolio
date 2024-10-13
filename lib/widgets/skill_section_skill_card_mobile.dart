import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/skill_items.dart';

class SkillCardMobile extends StatelessWidget {
  const SkillCardMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 450),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:32, vertical: 10),
        child:
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (int i = 0; i < skillItems.length; i++)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 15),
                  decoration: BoxDecoration(
                    color: CustomColor.cardBg,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Skill icon
                      Image.asset(skillItems[i]['img'], width: 24, height: 24),
                      const SizedBox(width: 8),
                      // Skill text
                      Text(
                        skillItems[i]['title'],
                        style: TextStyle(
                          color: CustomColor.subColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),

      ),
    );
  }
}