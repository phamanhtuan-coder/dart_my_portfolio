import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/widgets/header_desktop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          CustomColor.navBg,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          // Navigation Bar
          HeaderDesktop(),
          // MAIN - Landing (Hero Section)
          Container(
            height: 500,
            width: double.infinity,
            color: CustomColor.heroBg,
            child: Center(
              child: Text(
                "Welcome to My Portfolio",
                style: TextStyle(
                  color: CustomColor.textPrimary,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // Dark Section (About Me)
          Container(
            height: 500,
            width: double.infinity,
            color: CustomColor.bgDark,
            child: Center(
              child: Text(
                "About Me",
                style: TextStyle(
                  color: CustomColor.textPrimary,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // Light Section (Skills)
          Container(
            height: 500,
            width: double.infinity,
            color: CustomColor.bgLight,
            child: Center(
              child: Text(
                "Skills",
                style: TextStyle(
                  color: CustomColor.subColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // Additional Section (Past Experience)
          Container(
            height: 500,
            width: double.infinity,
            color: CustomColor.bgDark,
            child: Center(
              child: Text(
                "Past Experience",
                style: TextStyle(
                  color: CustomColor.textPrimary,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // Additional Section (Projects)
          Container(
            height: 500,
            width: double.infinity,
            color: CustomColor.bgLight,
            child: Center(
              child: Text(
                "Projects",
                style: TextStyle(
                  color: CustomColor.subColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // Additional Section (Contact)
          Container(
            height: 500,
            width: double.infinity,
            color: CustomColor.bgDark,
            child: Center(
              child: Text(
                "Contact",
                style: TextStyle(
                  color: CustomColor.textPrimary,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // Footer
          Container(
            height: 100,
            width: double.infinity,
            color: CustomColor.subColor,
            child: Center(
              child: Text(
                "© 2024 Phạm Anh Tuấn",
                style: TextStyle(
                  color: CustomColor.textPrimary,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}