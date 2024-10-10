import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class HeroSectionDesktop extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;

  const HeroSectionDesktop({
    required this.screenHeight,
    required this.screenWidth,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.6,
      width: double.infinity,
      color: CustomColor.mainColor,
      child: Row(
        children: [
          // Left side (Text + Buttons)
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(left: screenWidth >= 1000 ? 150 : 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Xin chào,\nmình là Phạm Anh Tuấn",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.textPrimary,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: CustomColor.buttonPrimary,
                          foregroundColor: CustomColor.subColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                          child: Text(
                            "Về mình",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      ElevatedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          backgroundColor: CustomColor.buttonSecondary,
                          foregroundColor: CustomColor.textPrimary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                          child: Text("Tải/ Xem CV", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Right side (Image)
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Container(
                  width: screenWidth >= 1000 ? screenWidth / 4 : screenWidth / 3,
                  height: screenWidth >= 1000 ? screenWidth / 4 : screenWidth / 3,
                  decoration: BoxDecoration(
                    color: CustomColor.warningColor,
                    borderRadius: BorderRadius.circular(screenWidth >= 1000 ? screenWidth / 4 : screenWidth / 3),
                  ),
                  child: Image.asset("assets/Hero_NoBG.png"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}