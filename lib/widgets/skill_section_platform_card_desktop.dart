import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/skill_items.dart';

class PlatformCardDesktop extends StatelessWidget {
  const PlatformCardDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints:const BoxConstraints(maxWidth: 500),
      child: Wrap(
          spacing: 20,
          runSpacing: 20,
          children: [
            for(int i=0; i<platformItems.length; i++)
              Container(
                width: 225,
                height:100,
                decoration: BoxDecoration(
                  color: CustomColor.cardBg,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child:
                      Text(platformItems[i]['title'],
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: CustomColor.subColor,
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),

                  ),
                  leading: Image.asset(
                    platformItems[i]['img'], width: 32,
                    height: 32,),
                ),

              )
          ]
      ),
    );
  }
}