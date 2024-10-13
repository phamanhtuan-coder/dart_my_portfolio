import 'package:flutter/material.dart';

class HorizontalTimelineSliderMobile extends StatelessWidget {
  final int currentIndex;
  final Function(int) onSelected;
  final List<Map<String, String>> timelineData;

  const HorizontalTimelineSliderMobile({
    Key? key,
    required this.currentIndex,
    required this.onSelected,
    required this.timelineData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, // Make the timeline scroll horizontally
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(timelineData.length, (index) {
          bool isSelected = currentIndex == index;

          return GestureDetector(
            onTap: () => onSelected(index),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Dot
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      width: isSelected ? 14 : 10,
                      height: isSelected ? 14 : 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isSelected
                            ? Colors.red // Selected dot color
                            : Colors.grey.withOpacity(0.8), // Unselected dot color
                      ),
                    ),
                    const SizedBox(height: 8), // Space between dot and label
                    // The label part (Years/Labels)
                    AnimatedDefaultTextStyle(
                      duration: const Duration(milliseconds: 300),
                      style: TextStyle(
                        fontSize: isSelected ? 14 : 12,
                        color: isSelected ? Colors.red : Colors.grey,
                        fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                      ),
                      child: Text(timelineData[index]['year']!),
                    ),
                  ],
                ),

                // Line between dots (except for the last item)
                if (index < timelineData.length - 1)
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    height: 2,
                    width: 40, // Line width between dots
                    color: Colors.grey.withOpacity(0.5),
                  ),
              ],
            ),
          );
        }),
      ),
    );
  }
}