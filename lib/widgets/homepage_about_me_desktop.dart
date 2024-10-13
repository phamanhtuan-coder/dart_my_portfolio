import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/timeline_data.dart';
import 'package:my_portfolio/widgets/homepage_about_me_slider_desktop.dart';

class AboutMeSectionDesktop extends StatefulWidget {
  const AboutMeSectionDesktop({super.key});

  @override
  _AboutMeSectionDesktopState createState() => _AboutMeSectionDesktopState();
}

class _AboutMeSectionDesktopState extends State<AboutMeSectionDesktop> {
  // Index for the currently selected timeline point
  int _currentSlideIndex = 0;

  // Sample text and image data for each timeline point

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600, // Adjusted height for a larger desktop section
      width: double.infinity,
      color: CustomColor.bgLight,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Title
            Text(
              "Một chút xíu về mình",
              style: TextStyle(
                color: CustomColor.subColor,
                fontSize: 32, // Larger font for desktop
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            // Content
            Container(
              height: 420, // Adjusted height for a larger desktop section
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Left Side: Text Content
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Title
                        Text(
                          aboutMeData[_currentSlideIndex]['header']!,
                          style: TextStyle(
                            color: CustomColor.subColor,
                            fontSize: 32, // Header font size
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                        // Dynamic Text (Summary)
                        Text(
                          aboutMeData[_currentSlideIndex]['text']!,
                          style: TextStyle(
                            color: CustomColor.subColor,
                            fontSize: 22, // Regular font for description
                          ),
                        ),
                        const SizedBox(height: 20),
                        // Read More button (Placeholder)
                        ElevatedButton(
                          onPressed: () {
                            // Future redirection logic to About Me page
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: CustomColor.subColor, // Button color
                          ),
                          child: const Text('Read More'),
                        ),
                      ],
                    ),
                  ),
                  // Right Side: Slideshow for Images
                  Expanded(
                    flex: 2,
                    child: Stack(
                      children: [
                        // Image
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: 350, // Image width
                            height: 300, // Image height
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 10,
                                  offset: const Offset(0, 5), // Shadow effect
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                aboutMeData[_currentSlideIndex]['img']!,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        //Slider
                        Positioned(
                          right: 10,
                          top: 0,
                          bottom: 0,
                          child: VerticalTimelineSliderDesktop(
                            currentIndex: _currentSlideIndex,
                            onSelected: (index) {
                              setState(() {
                                _currentSlideIndex = index;
                              });
                            },
                            timelineData: aboutMeData,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),




      ),
    );
  }
}