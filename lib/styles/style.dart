
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

BoxDecoration kGradientBoxDecoration = BoxDecoration(
  gradient: LinearGradient(
    colors: [CustomColor.navBgStart, CustomColor.navBgEnd],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,

  ),

);