import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_items.dart';

class HeaderDesktop extends StatelessWidget{
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    // Navigation Bar
    return Container(
      height: 65,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [CustomColor.navBgStart, CustomColor.navBgEnd],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,

        ),

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //Name
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Phạm Anh Tuấn",
              style: TextStyle(
                color: CustomColor.textPrimary,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Spacer(),
          // Navigation Buttons
          Container(
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: CustomColor.NavButtonBG,
              borderRadius: BorderRadius.circular(100), // Rounded corners
            ),
            child: Row(
              children: [
                for (int i = 0; i < navItems.length; i++)
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        fixedSize: const Size(110, 50),
                      ),
                      onPressed: () {},
                      child: Text(
                        navItems[i],
                        style: TextStyle(
                          color: CustomColor.navButtonColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          )


        ],
      ),
    );
  }
}