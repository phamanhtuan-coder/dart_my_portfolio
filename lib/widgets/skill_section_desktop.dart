import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/widgets/skill_section_platform_card_desktop.dart';
import 'package:my_portfolio/widgets/skill_section_skill_card_desktop.dart';

class SkillSectionDesktop extends StatelessWidget {
  const SkillSectionDesktop ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColor.bgDark,
      width: double.infinity,
      height: 420,
      child: Column(
              children:[
                //Title
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 30),
                  child:
                    Text('Kỹ năng của mình', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
                ),
                //Platforms and SKills
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children:[
                   //Platforms
                   PlatformCardDesktop(),
                    SizedBox(width: 50,),
                   //Skills
                   SkillCardDesktop(),
                 ]

                ),
                        ]

      ),
    );
  }
}