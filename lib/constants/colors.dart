import 'dart:ui';
import 'package:flutter/material.dart';

class CustomColor {
  // Main and sub colors
  static const Color mainColor = Color(0xFFA6122D); // Main brand color for large sections (Hero, etc.)
  static const Color subColor = Color(0xFF1C110A); // Sub color for contrasts and highlights

  // Text colors
  static const Color textPrimary = Color(0xFFE4D6A7); // For main text (e.g., headings)
  static const Color textSecondary = Color(0xFFA4B5BF); // For secondary text (e.g., subtitles, hints)

  // Background colors
  static const Color bgLight = Color(0xFFF9E9D8); // Soft beige for sections (warmer)
  static const Color bgDark = Color(0xFF1F2326);  // Dark, complementary background

  // Button colors
  static const Color buttonPrimary = Color(0xFFE9B44C); // Primary buttons (bright and eye-catching)
  static const Color buttonSecondary = Color(0xFF50A2A7); // Secondary buttons (calmer tone)

  // Navigation colors
  static const Color navBg = Color(0xFF5A0F0C); // Dark Red
  static const Color navButtonBG = Color(0xFF7E1E1A);
  static const Color navBgStart = Color(0xFF5D3A33); // Dark Brownish Red (start of gradient)
  static const Color navBgEnd = Color(0xFF5A0F0C);   // Slightly Lighter Red (end of gradient)
  static const Color navButtonColor = Color(0xFFE4D6A7); // Color for navigation buttons in the top app bar
  static const Color menuHamburgerColor = Color(0xFFE4D6A7); // Color for menu hamburger icon

  // Hero section
  static const Color heroBg = Color(0xFFA6122D); // Main color for hero sections or large areas

  // Border and accent colors
  static const Color border = Color(0xFFA4B5BF); // Border color for containers, cards, or inputs
  static const Color accent = Color(0xFFD6455D); // Updated to a more intense red for highlights, icons, or call-to-action

  // Widget-specific colors
  static const Color appBarBg = Color(0xFF2B1A17); // AppBar background (slightly lighter than sub color)
  static const Color cardBg = Color(0xFFF7F2E7);   // Card background (light tone)
  static const Color drawerBg = Color(0xFF1C110A); // Drawer background (sub color)
  static const Color iconColor = Color(0xFFE4D6A7); // Icon color to match text

  // Error and warning colors
  static const Color errorColor = Color(0xFFD6455D); // Color updated to a more vibrant red for error messages or icons
  static const Color warningColor = Color(0xFFE9B44C); // Color for warnings

  // Tooltip and hover colors
  static const Color tooltipBg = Color(0xFF2B1A17); // Tooltip background color (darkened to fit dark sections)
  static const Color hoverBg = Color(0xFFA4B5BF);   // Hover background for buttons or cards
}