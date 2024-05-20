import 'package:flutter/material.dart';

class BottomNavBarTheme extends ThemeExtension<BottomNavBarTheme> {
  final Color backgroundColor;
  final Color shadowColor;
  final Color activeIconColor;
  final Color inactiveIconColor;

  const BottomNavBarTheme({
    required this.backgroundColor,
    required this.shadowColor,
    required this.activeIconColor,
    required this.inactiveIconColor,
  });

  @override
  ThemeExtension<BottomNavBarTheme> copyWith({
    Color? backgroundColor,
    Color? shadowColor,
    Color? activeIconColor,
    Color? inactiveIconColor,
  }) {
    return BottomNavBarTheme(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      shadowColor: shadowColor ?? this.shadowColor,
      activeIconColor: activeIconColor ?? this.activeIconColor,
      inactiveIconColor: inactiveIconColor ?? this.inactiveIconColor,
    );
  }

  @override
  ThemeExtension<BottomNavBarTheme> lerp(
      covariant ThemeExtension<BottomNavBarTheme>? other, double t) {
    if (other is! BottomNavBarTheme) {
      return this;
    }
    return BottomNavBarTheme(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
      shadowColor: Color.lerp(shadowColor, other.shadowColor, t)!,
      activeIconColor: Color.lerp(activeIconColor, other.activeIconColor, t)!,
      inactiveIconColor: Color.lerp(inactiveIconColor, other.inactiveIconColor, t)!,
    );
  }
}

extension BuildContextExt on BuildContext {
  BottomNavBarTheme get bottomNavBarTheme => Theme.of(this).extension<BottomNavBarTheme>()!;
}
