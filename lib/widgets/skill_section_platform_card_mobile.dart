import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/skill_items.dart';

class PlatformCardMobile extends StatelessWidget {
  const PlatformCardMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 350),
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: [
          for (int i = 0; i < platformItems.length; i++)
            Container(
              width: 150,
              height: 80,
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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: Row(
                  children: [
                    // Platform icon
                    Image.asset(
                      platformItems[i]['img'],
                      width: 28, // Smaller icon size
                      height: 28,
                    ),
                    const SizedBox(width: 10),
                    // Platform title
                    Expanded(
                      child: Text(
                        platformItems[i]['title'],
                        style: TextStyle(
                          color: CustomColor.subColor,
                          fontSize: 14, // Slightly reduced font size for compactness
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis, // Ensure text fits in one or two lines
                      ),
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