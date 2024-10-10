
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_items.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 20, bottom: 10),
              child: IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          for (int i = 0; i < navItems.length; i++)
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 30),
              titleTextStyle: TextStyle(
                color: CustomColor.textPrimary,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              leading: Icon(
                navIcons[i],
              ),
              title: Text(
                navItems[i],
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
        ],
      ),
    );
  }
}