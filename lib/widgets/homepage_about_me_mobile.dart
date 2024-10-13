import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/timeline_data.dart';
import 'package:my_portfolio/widgets/homepage_about_me_slider_mobile.dart';

class AboutMeSectionMobile extends StatefulWidget {
  const AboutMeSectionMobile({super.key});

  @override
  _AboutMeSectionMobileState createState() => _AboutMeSectionMobileState();
}

class _AboutMeSectionMobileState extends State<AboutMeSectionMobile> {
  int _currentSlideIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: CustomColor.bgLight,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Title
            Text(
              "Một chút xíu về mình",
              style: TextStyle(
                color: CustomColor.subColor,
                fontSize: 24, // Adjusted for mobile
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            // Image Slider
            SizedBox(
              width: 450, // Image width
              height: 300, // Image height
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: double.infinity,
                      height:300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          aboutMeData[_currentSlideIndex]['img']!,
                          fit: BoxFit.cover, // Adjust fit for mobile screen
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Horizontal Timeline Slider
            HorizontalTimelineSliderMobile(
              currentIndex: _currentSlideIndex,
              onSelected: (index) {
                setState(() {
                  _currentSlideIndex = index;
                });
              },
              timelineData: aboutMeData,
            ),

            const SizedBox(height: 10),

            // Text Area: Title and Paragraph
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text(
                    aboutMeData[_currentSlideIndex]['header']!,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.subColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    aboutMeData[_currentSlideIndex]['year']!,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.subColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Paragraph
                  Text(
                    aboutMeData[_currentSlideIndex]['text']!,
                    style: TextStyle(
                      fontSize: 16,
                      color: CustomColor.subColor,
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