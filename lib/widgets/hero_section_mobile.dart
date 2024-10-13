import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class HeroSectionMobile extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;

  const HeroSectionMobile({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    // Define minHeight constraint
    double minHeight = 450;

    // Adjust height based on screen width, keeping only minHeight in place


    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight:minHeight, // Only the minimum height constraint is applied
      ),
      child: Container(
        width: double.infinity,
        height: minHeight*0.5,
        color: CustomColor.mainColor,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Picture (Above text for mobile)
            Container(
              width: minHeight * 0.5,
              height: minHeight * 0.5,
              decoration: BoxDecoration(
                color: CustomColor.warningColor,
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                "assets/Hero_NoBG.png",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: screenHeight * 0.003),

            // Greeting text
            Text(
              "Xin chào,\nmình là Phạm Anh Tuấn",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: minHeight * 0.035,
                fontWeight: FontWeight.bold,
                color: CustomColor.textPrimary,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 10),

            // Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle "Về mình"
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColor.buttonPrimary,
                    foregroundColor: CustomColor.subColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal:minHeight * 0.035,
                      vertical: minHeight * 0.035,
                    ),
                    child: Text(
                      "Về mình",
                      style: TextStyle(
                        fontSize: minHeight * 0.035,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10), // Space between buttons
                ElevatedButton(
                  onPressed: () {
                    // Handle "Tải/ Xem CV"
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: CustomColor.buttonSecondary,
                    foregroundColor: CustomColor.textPrimary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: minHeight * 0.05,
                      vertical: minHeight * 0.03,
                    ),
                    child: Text(
                      "Tải/ Xem CV",
                      style: TextStyle(
                        fontSize: minHeight * 0.035,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}