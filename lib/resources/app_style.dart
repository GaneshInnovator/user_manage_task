import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constant.dart';
import 'app_colors.dart';
import 'app_dimen.dart';
import 'app_fonts.dart';

class AppStyles {
  static ThemeData lightTheme() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    final ThemeData base = ThemeData.light();
    Map<int, Color> color = {
      50: const Color.fromRGBO(136, 14, 79, .1),
      100: const Color.fromRGBO(136, 14, 79, .2),
      200: const Color.fromRGBO(136, 14, 79, .3),
      300: const Color.fromRGBO(136, 14, 79, .4),
      400: const Color.fromRGBO(136, 14, 79, .5),
      500: const Color.fromRGBO(136, 14, 79, .6),
      600: const Color.fromRGBO(136, 14, 79, .7),
      700: const Color.fromRGBO(136, 14, 79, .8),
      800: const Color.fromRGBO(136, 14, 79, .9),
      900: const Color.fromRGBO(136, 14, 79, 1),
    };
    return base.copyWith(
      colorScheme: ColorScheme.fromSwatch(
          primarySwatch: MaterialColor(0xFF000000, color)),
      primaryColor: AppColors.primaryColor,
      primaryColorLight: AppColors.primaryColor,
      primaryColorDark: AppColors.primaryColor,
      splashFactory: NoSplash.splashFactory,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      unselectedWidgetColor: AppColors.hintTextColor,
      textTheme: base.textTheme.apply(
        bodyColor: AppColors.textColor,
        fontFamily: AppFont.font,
      ),
      appBarTheme: AppBarTheme(
        color: AppColors.black,
        titleTextStyle: TextStyle(
            fontSize: AppDimen.textSizeH4,
            fontFamily: AppFont.font,
            fontWeight: FontWeight.w500,
            color: AppColors.white),
        toolbarTextStyle: TextStyle(
            fontSize: AppDimen.textSizeH4,
            fontFamily: AppFont.font,
            fontWeight: FontWeight.w500,
            color: AppColors.white),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: AppColors.black,
        selectionHandleColor: AppColors.black,
      ),
      tooltipTheme: TooltipThemeData(
          textStyle: TextStyle(
            color: AppColors.black,
          )),
      snackBarTheme: SnackBarThemeData(
          contentTextStyle: TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.w600,
            fontSize: AppDimen.textSizeH2,
            fontFamily: AppFont.font,
          )),
      dialogTheme: DialogThemeData(
        contentTextStyle: TextStyle(
          fontFamily: AppFont.font,
          color: AppColors.accentColor,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
            color: AppColors.hintTextColor,
            fontSize: AppDimen.textSizeH1,
            fontWeight: FontWeight.w300,
            fontFamily: AppFont.font),
        labelStyle: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
            fontFamily: AppFont.font),
        errorStyle: const TextStyle(
            color: AppColors.errorRed,
            fontWeight: FontWeight.w300,
            fontSize: AppDimen.textSizeH1,
            fontFamily: AppFont.font),
      ),
      dialogBackgroundColor: AppColors.white,
    );
  }

  static ThemeData darkTheme() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    final ThemeData base = ThemeData.dark();
    Map<int, Color> color = {
      50: const Color.fromRGBO(136, 14, 79, .1),
      100: const Color.fromRGBO(136, 14, 79, .2),
      200: const Color.fromRGBO(136, 14, 79, .3),
      300: const Color.fromRGBO(136, 14, 79, .4),
      400: const Color.fromRGBO(136, 14, 79, .5),
      500: const Color.fromRGBO(136, 14, 79, .6),
      600: const Color.fromRGBO(136, 14, 79, .7),
      700: const Color.fromRGBO(136, 14, 79, .8),
      800: const Color.fromRGBO(136, 14, 79, .9),
      900: const Color.fromRGBO(136, 14, 79, 1),
    };
    return base.copyWith(
      colorScheme: ColorScheme.fromSwatch(
          primarySwatch: MaterialColor(0xFF000000, color)),
      primaryColor: AppColors.primaryColor,
      primaryColorLight: AppColors.primaryColor,
      primaryColorDark: AppColors.primaryColor,
      splashFactory: NoSplash.splashFactory,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      unselectedWidgetColor: AppColors.hintTextColor,
      textTheme: base.textTheme.apply(
        bodyColor: AppColors.textColor,
        fontFamily: AppFont.font,
      ),
      appBarTheme: AppBarTheme(
        color: AppColors.black,
        titleTextStyle: TextStyle(
            fontSize: AppDimen.textSizeH4,
            fontFamily: AppFont.font,
            fontWeight: FontWeight.w500,
            color: AppColors.white),
        toolbarTextStyle: TextStyle(
            fontSize: AppDimen.textSizeH4,
            fontFamily: AppFont.font,
            fontWeight: FontWeight.w500,
            color: AppColors.white),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: AppColors.black,
        selectionHandleColor: AppColors.black,
      ),
      tooltipTheme: TooltipThemeData(
          textStyle: TextStyle(
            color: AppColors.textColor,
          )),
      snackBarTheme: SnackBarThemeData(
          contentTextStyle: TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.w600,
            fontSize: AppDimen.textSizeH2,
            fontFamily: AppFont.font,
          )),
      dialogTheme: DialogThemeData(
        contentTextStyle: TextStyle(
          fontFamily: AppFont.font,
          color: AppColors.accentColor,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
            color: AppColors.hintTextColor,
            fontSize: AppDimen.textSizeH1,
            fontWeight: FontWeight.w300,
            fontFamily: AppFont.font),
        labelStyle: TextStyle(
            color: AppColors.black,
            fontWeight: FontWeight.bold,
            fontFamily: AppFont.font),
        errorStyle: const TextStyle(
            color: AppColors.errorRed,
            fontWeight: FontWeight.w300,
            fontSize: AppDimen.textSizeH1,
            fontFamily: AppFont.font),
      ),
      dialogBackgroundColor: AppColors.white,
    );
  }
}
