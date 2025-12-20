import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../resources/app_colors.dart';

LottieDelegates getLottieDelegates(String loader) {
  switch (loader) {
    case "assets/lottie/empty_popular_services.json":
      return LottieDelegates(
        values: [
          ValueDelegate.color(
            const ['**', 'Layer 6', 'Group 5', '**'],
            value: lighten(AppColors.primaryColor, 0.2),
          ),
          ValueDelegate.color(
            const ['**', 'Layer 7', 'Group 3', '**'],
            value: darken(AppColors.primaryColor),
          ),
          ValueDelegate.color(
            const ['**', 'Layer 7', 'Group 5', 'Group 3', "**"],
            value: lighten(AppColors.primaryColor, 0.2),
          ),
          ValueDelegate.color(
            const ['**', 'Layer 7', 'Group 5', 'Group 1', "**"],
            value: lighten(AppColors.primaryColor, 0.2),
          ),
          ValueDelegate.color(
            const ['**', 'Layer 8', '**'],
            value: lighten(AppColors.primaryColor, 0.2),
          ),
          ValueDelegate.color(
            const ['**', 'Layer 9', 'Group 17', "**"],
            value: lighten(AppColors.primaryColor, 0.2),
          ),
          ValueDelegate.color(
            const ['**', 'Layer 9', 'Group 15', "**"],
            value: lighten(AppColors.primaryColor, 0.2),
          ),
          ValueDelegate.color(
            const ['**', 'Layer 9', 'Group 8', "**"],
            value: lighten(AppColors.primaryColor, 0.2),
          ),
          ValueDelegate.color(
            const ['**', 'Layer 11', 'Group 12', "**"],
            value: lighten(AppColors.primaryColor, 0.2),
          ),
          ValueDelegate.color(
            const ['**', 'Layer 11', 'Group 14', "**"],
            value: lighten(AppColors.primaryColor, 0.2),
          ),
          ValueDelegate.color(
            const ['**', 'Layer 11', 'Group 18', "**"],
            value: lighten(AppColors.primaryColor, 0.2),
          ),
        ],
      );
    case "assets/lottie/loader.json":
      return LottieDelegates(
        values: [
          ValueDelegate.color(
            const ['**', 'Кривые Слой 2', '**'],
            value: AppColors.primaryColor,
          ),
          ValueDelegate.color(
            const ['**', 'Кривые Layer 1', '**'],
            value: darken(AppColors.primaryColor, 0.3),
          ),
        ],
      );
    case 'assets/lottie/loader-dark.json':
      return LottieDelegates(
        values: [
          ValueDelegate.color(
            const ['**', 'Кривые Слой 2', '**'],
            value: lighten(AppColors.primaryColor, 0.4),
          ),
          ValueDelegate.color(
            const ['**', 'Кривые Layer 1', '**'],
            value: AppColors.primaryColor,
          ),
        ],
      );
    case "assets/lottie/schedule_success.json":
      return LottieDelegates(
        values: [
          ValueDelegate.color(
            const ['**', 'vector 5 Outlines', 'Group 1', 'Path 1', '**'],
            value: AppColors.primaryColor,
          ),
          ValueDelegate.color(
            const ['**', 'vector 5 Outlines', 'Group 2', '**'],
            value: AppColors.primaryColor,
          ),
          ValueDelegate.color(
            const ['**', 'vector 5 Outlines', 'Group 3', '**'],
            value: lighten(AppColors.primaryColor, 0.15),
          ),
          ValueDelegate.strokeColor(
              const ['**', 'vector 5 Outlines', 'Group 4', "Stroke 1", '**'],
              value: lighten(AppColors.primaryColor, 0.3)),
          ValueDelegate.strokeColor(
              const ['**', 'vector 5 Outlines', 'Group 5', "Stroke 1", '**'],
              value: lighten(AppColors.primaryColor, 0.3)),
          ValueDelegate.strokeColor(
              const ['**', 'vector 5 Outlines', 'Group 6', "Stroke 1", '**'],
              value: lighten(AppColors.primaryColor, 0.3)),
          ValueDelegate.strokeColor(
              const ['**', 'vector 5 Outlines', 'Group 7', "Stroke 1", '**'],
              value: lighten(AppColors.primaryColor, 0.3)),
          ValueDelegate.strokeColor(const ['**', 'Shape Layer 3', '**'],
              value: lighten(AppColors.primaryColor, 0.1)),
        ],
      );
    case "assets/lottie/ripple_loader.json":
      return LottieDelegates(
        values: [
          ValueDelegate.strokeColor(
            const ['中心圆', '**'],
            value: AppColors.primaryColor,
          ),
          ValueDelegate.color(
            const ['**', '点9', '**'],
            value: AppColors.primaryColor,
          ),
          ValueDelegate.color(
            const ['**', '点8', '**'],
            value: AppColors.primaryColor,
          ),
          ValueDelegate.color(
            const ['**', '点7', '**'],
            value: AppColors.primaryColor,
          ),
          ValueDelegate.color(
            const ['**', '点6', '**'],
            value: AppColors.primaryColor,
          ),
          ValueDelegate.color(
            const ['**', '点5', '**'],
            value: AppColors.primaryColor,
          ),
          ValueDelegate.color(
            const ['**', '点4', '**'],
            value: AppColors.primaryColor,
          ),
          ValueDelegate.color(
            const ['**', '点3', '**'],
            value: AppColors.primaryColor,
          ),
          ValueDelegate.color(
            const ['**', '点2', '**'],
            value: AppColors.primaryColor,
          ),
          ValueDelegate.color(
            const ['**', '点1', '**'],
            value: AppColors.primaryColor,
          ),
          ValueDelegate.strokeColor(
            const ['**', '外圆 1', '**'],
            value: AppColors.primaryColor,
          ),
          ValueDelegate.gradientColor(
            const ['**', '内光 1', '**'],
            value: [Colors.white, AppColors.primaryColor],
          ),
          ValueDelegate.strokeColor(
            const ['**', '外圆 2', '**'],
            value: AppColors.primaryColor,
          ),
          ValueDelegate.gradientColor(
            const ['**', '内光 2', '**'],
            value: [Colors.white, AppColors.primaryColor],
          ),
          ValueDelegate.strokeColor(
            const ['**', '外圆 3', '**'],
            value: AppColors.primaryColor,
          ),
          ValueDelegate.gradientColor(
            const ['**', '内光 3', '**'],
            value: [Colors.white, AppColors.primaryColor],
          ),
          ValueDelegate.strokeColor(
            const ['**', '外圆 4', '**'],
            value: AppColors.primaryColor,
          ),
          ValueDelegate.gradientColor(
            const ['**', '内光 4', '**'],
            value: [Colors.white, AppColors.primaryColor],
          ),
          ValueDelegate.strokeColor(
            const ['**', '外圆 5', '**'],
            value: AppColors.primaryColor,
          ),
          ValueDelegate.gradientColor(
            const ['**', '内光 5', '**'],
            value: [Colors.white, AppColors.primaryColor],
          ),
        ],
      );
  }
  return const LottieDelegates();
}

Color darken(Color color, [double amount = .1]) {
  assert(amount >= 0 && amount <= 1);
  final hsl = HSLColor.fromColor(color);
  final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));
  return hslDark.toColor();
}

Color lighten(Color color, [double amount = .1]) {
  assert(amount >= 0 && amount <= 1);
  final hsl = HSLColor.fromColor(color);
  final hslLight =
  hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));
  return hslLight.toColor();
}

