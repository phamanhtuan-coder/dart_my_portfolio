import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/widgets/skill_section_platform_card_mobile.dart';
import 'package:my_portfolio/widgets/skill_section_skill_card_mobile.dart';

class SkillSectionMobile  extends StatelessWidget {
  const SkillSectionMobile ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColor.bgDark,
      width: double.infinity,
      height: 550,
      child: Column(
              children:[
                //Title
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child:
                    Text('Kỹ năng của mình', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),)
                ),
                //Platforms and SKills
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children:[
                   //Platforms
                   PlatformCardMobile(),
                    SizedBox(height:10),
                   //Skills
                   SkillCardMobile(),
                 ]

                ),
                        ]

      ),
    );
  }
}