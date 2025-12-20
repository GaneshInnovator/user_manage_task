import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  static var linksColor = {"color": "blue"};

  //background Color
  static Color screenBGColor = const Color(0xFFFFFEF4);

  //foreground Color
  static Color white =  const Color(0xFFFFFFFF);

  //TextColor
  static Color black = const Color(0xFF000000);
  static Color textColor = const Color(0xFF161616);

  //Button Text Color
  static Color constWhite = const Color(0xFFFFFFFF);
  static Color bottomButtonTextColor = const Color(0xFFFFFFFF);

  //buttonColor Changed in Bottom_button.dart file
  static Color primaryColor = const Color(0xFFDFA32A);

  //Icon Color
  static Color iconBgColor = const Color(0xFF000000); //0xFFF6F6F6


  static Color hintTextColor = const Color(0xFF969696);

  static const Color errorRed = Color(0xFFC70505);

  static Color accentColor = const Color(0xFF000000);

  static Color keyboardColor = const Color(0xFFd8d8d8);





  changeToLight() {
    linksColor = {"color": "blue"};
    primaryColor = const Color(0xFFDFA32A);
    screenBGColor = const Color(0xFFFFFEF4);
    textColor = const Color(0xFF161616);
    white = const Color(0xFFFFFFFF);
    bottomButtonTextColor = const Color(0xFFFFFFFF);
    black = const Color(0xFF000000);
    iconBgColor = const Color(0xFF000000);
    hintTextColor = const Color(0xFF969696);
    accentColor = const Color(0xFF000000);
    keyboardColor = const Color(0xFFd8d8d8);
  }

  changeToDark() {
    linksColor = {"color": "red"};
    primaryColor = const Color(0xFFDFA32A);
    screenBGColor = const Color(0xFF171D37);
    white = const Color(0xFF0E142F);
    bottomButtonTextColor = const Color(0xFF0E142F);
    textColor = const Color(0xFFC7D8EB);
    black = const Color(0xFFF6F6F6);
    iconBgColor = const Color(0xFFF6F6F6);
    hintTextColor = const Color(0xFF868585);
    accentColor = const Color(0xFFC7D8EB);
    keyboardColor = const Color(0xFF0E142F);
  }
}
