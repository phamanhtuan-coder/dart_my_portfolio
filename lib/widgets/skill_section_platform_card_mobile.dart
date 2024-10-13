import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/skill_items.dart';

class PlatformCardMobile extends StatelessWidget {
  const PlatformCardMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 350),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          for (int i = 0; i < platformItems.length; i++)
            Container(
              margin: EdgeInsets.symmetric(vertical: 5,horizontal: screenWidth*0.2),
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
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Row(
                  children: [
                    // Platform icon
                    Image.asset(
                      alignment: Alignment.center,
                      platformItems[i]['img'],
                      width: screenWidth>=500? 128: screenWidth>=390?64:32,
                      height: screenWidth>=500? 128: screenWidth>=390?64:32,
                    ),
                    const SizedBox(width: 10),
                    // Platform title
                    Expanded(
                      child: Text(
                        textAlign: TextAlign.center,
                        platformItems[i]['title'],
                        style: TextStyle(
                          color: CustomColor.subColor,
                          fontSize: screenWidth>600? 24:screenWidth>500? 20: screenWidth>=390?18:16,
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