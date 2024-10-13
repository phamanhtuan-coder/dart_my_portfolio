import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/skill_items.dart';

class SkillCardDesktop extends StatelessWidget {
  const SkillCardDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ConstrainedBox(

        constraints:const BoxConstraints(maxWidth: 700),
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            for(int i=0; i<skillItems.length; i++)
              Chip(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                label:Text(skillItems[i]['title'], style: TextStyle(color: CustomColor.subColor, fontSize: 18, fontWeight: FontWeight.bold),),
                avatar: Image.asset(skillItems[i]['img'], width: 32, height: 32,),
                backgroundColor: CustomColor.cardBg,
              ),
          ],
        ),
      ),
    );
  }
}