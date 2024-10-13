import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/styles/size.dart';
import 'package:my_portfolio/widgets/drawer_mobile.dart';
import 'package:my_portfolio/widgets/header_desktop.dart';
import 'package:my_portfolio/widgets/header_mobile.dart';
import 'package:my_portfolio/widgets/hero_section_desktop.dart';
import 'package:my_portfolio/widgets/hero_section_mobile.dart';
import 'package:my_portfolio/widgets/skill_section_desktop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: _scaffoldKey,
          backgroundColor: CustomColor.navBg,
          endDrawer: constraints.maxWidth > kMinDesktopMaxWidth
              ? null
              : const DrawerMobile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              // Navigation Bar
              if (constraints.maxWidth > kMinDesktopMaxWidth)
                const HeaderDesktop(),
              if (constraints.maxWidth <= kMinDesktopMaxWidth)
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    _scaffoldKey.currentState!.openEndDrawer();
                  },
                ),

              // MAIN - Hero Section
              if (constraints.maxWidth > kMinDesktopMaxWidth)
                HeroSectionDesktop(screenHeight: screenHeight, screenWidth: screenWidth)
              else
                HeroSectionMobile(screenHeight: screenHeight, screenWidth: screenWidth),

              // Dark Section (Skills)
              if (constraints.maxWidth > kMinDesktopMaxWidth)
              SkillSectionDesktop(),
              //else


              // Light Section (About Me)
              Container(
                height: 500,
                width: double.infinity,
                color: CustomColor.bgLight,
                child: Center(
                  child: Text(
                    "About Me",
                    style: TextStyle(
                      color: CustomColor.subColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),



              // Dark Section (Past Experience)
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

              // Light Section (Projects)
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

              // Dark Section (Contact)
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
      },
    );
  }
}