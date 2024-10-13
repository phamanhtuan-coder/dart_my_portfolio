import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/styles/style.dart';
import 'package:my_portfolio/widgets/site_name_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return //HeaderMobile
      Container(
          height: 50,
          width: double.infinity,
          decoration: kGradientBoxDecoration,
          child:
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child:SiteNameLogo(onTap:  onLogoTap),
              ),
              const Spacer(),
              Container(
                width: 60,
                decoration: BoxDecoration(
                  color: CustomColor.navButtonBG,
                  borderRadius: BorderRadius.circular(100), // Rounded corners
                ),
                child:
                IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: CustomColor.menuHamburgerColor,
                  ),
                  onPressed:  onMenuTap,
                ),
              ),
            ],
          )
      );
  }
}