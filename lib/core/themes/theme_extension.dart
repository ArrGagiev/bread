import 'package:flutter/material.dart';

class AppThemeColors extends ThemeExtension<AppThemeColors> {
  final Color activeIconColor; //todo: bottom_nav_bar
  final Color inactiveIconColor; //todo: bottom_nav_bar

  const AppThemeColors({
    required this.activeIconColor,
    required this.inactiveIconColor,
  });

  @override
  ThemeExtension<AppThemeColors> copyWith({
    Color? activeIconColor,
    Color? inactiveIconColor,
  }) {
    return AppThemeColors(
      activeIconColor: activeIconColor ?? this.activeIconColor,
      inactiveIconColor: inactiveIconColor ?? this.inactiveIconColor,
    );
  }

  @override
  ThemeExtension<AppThemeColors> lerp(covariant ThemeExtension<AppThemeColors>? other, double t) {
    if (other is! AppThemeColors) {
      return this;
    }
    return AppThemeColors(
      activeIconColor: Color.lerp(activeIconColor, other.activeIconColor, t)!,
      inactiveIconColor: Color.lerp(inactiveIconColor, other.inactiveIconColor, t)!,
    );
  }
}

extension BuildContextExt on BuildContext {
  AppThemeColors get themeColors => Theme.of(this).extension<AppThemeColors>()!;
}
