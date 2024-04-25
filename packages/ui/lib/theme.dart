import 'dart:math';

import 'package:flutter/material.dart';

class AppTheme {
  static const Color white = Color(0xffFFFFFF);
  static const Color softPink = Color(0xffF2D7D5);
  static const Color nude = Color(0xffE6C9B3);
  static const Color taupe = Color(0xffB6A292);
  static const Color caramel = Color(0xffA57B61);
  static const Color mocha = Color(0xff5E463C);
  static const Color black = Color(0xff000000);
  static const Color primary = caramel;
  static const TextStyle defaultTextStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.5,
    color: primary,
  );
  static ButtonStyle _defaultButtonStyle([Color? backgroundColor = primary]) {
    return ButtonStyle(
      foregroundColor: MaterialStateProperty.all(Colors.white),
      backgroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.pressed)) {
          return Colors.grey[800];
        }

        return backgroundColor;
      }),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      textStyle: MaterialStateTextStyle.resolveWith(
        (states) => switch (states) { _ => defaultTextStyle },
      ),
      elevation: MaterialStateProperty.resolveWith((states) => 0),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }

  static Color darkenColor(Color color, double percentage) {
    assert(percentage >= 0 && percentage <= 1);

    // Calculate the percentage of darkness
    final double amount = 1 - percentage;

    // Darken the color by reducing its RGB values
    final int red = max(0, (color.red * amount).round());
    final int green = max(0, (color.green * amount).round());
    final int blue = max(0, (color.blue * amount).round());

    // Return the darkened color
    return Color.fromRGBO(red, green, blue, 1.0);
  }

  static _buildTheme(ThemeData theme) {
    final headerColor = darkenColor(primary, 0.4);

    return theme.copyWith(
      textTheme: theme.textTheme.copyWith(
        displayLarge: defaultTextStyle.copyWith(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: headerColor,
        ),
        displayMedium: defaultTextStyle.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: headerColor,
        ),
        displaySmall: defaultTextStyle.copyWith(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          color: headerColor,
        ),
        titleSmall: defaultTextStyle.copyWith(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: primary,
        ),
        titleMedium: defaultTextStyle.copyWith(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: primary,
        ),
        titleLarge: defaultTextStyle.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: primary,
        ),
        bodySmall: defaultTextStyle.copyWith(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: black,
        ),
        bodyMedium: defaultTextStyle.copyWith(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: black,
        ),
        bodyLarge: defaultTextStyle.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: black,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: _defaultButtonStyle().copyWith(
          minimumSize: MaterialStateProperty.all(const Size(
            90,
            kMinInteractiveDimension / 2,
          )),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: _defaultButtonStyle(taupe),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(primary),
        ),
      ),
    );
  }

  static ThemeData get lightTheme {
    return _buildTheme(ThemeData(colorSchemeSeed: primary));
  }

  static ThemeData get darkTheme {
    return _buildTheme(ThemeData(
      colorSchemeSeed: primary,
      brightness: Brightness.dark,
    ));
  }
}
