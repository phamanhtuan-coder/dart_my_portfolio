import 'package:flutter/material.dart';

class VerticalTimelineSliderDesktop extends StatelessWidget {
  final int currentIndex;
  final Function(int) onSelected;
  final List<Map<String, String>> timelineData;

  const VerticalTimelineSliderDesktop({
    Key? key,
    required this.currentIndex,
    required this.onSelected,
    required this.timelineData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(timelineData.length, (index) {
        bool isSelected = currentIndex == index;

        return GestureDetector(
          onTap: () => onSelected(index),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      // Vertical Line above the dot (hidden for the first item)
                      if (index > 0)
                        Container(
                          height: 30,
                          width: 2,
                          color: Colors.grey.withOpacity(0.5),
                        ),
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
                      // Vertical Line below the dot (hidden for the last item)
                      if (index < timelineData.length - 1)
                        Container(
                          height: 40,
                          width: 2,
                          color: Colors.grey.withOpacity(0.5),
                        ),
                    ],
                  ),
                  const SizedBox(width: 10), // Space between dot and label
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
            ],
          ),
        );
      }),
    );
  }
}