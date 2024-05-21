import 'package:flutter/material.dart';

class InfoNavigationCardTheme extends ThemeExtension<InfoNavigationCardTheme> {
  final Color backgroundColor;
  final TextStyle descriptionTextStyle;

  const InfoNavigationCardTheme({
    required this.backgroundColor,
    required this.descriptionTextStyle,
  });

  @override
  ThemeExtension<InfoNavigationCardTheme> copyWith({
    Color? backgroundColor,
    TextStyle? descriptionTextStyle,
  }) {
    return InfoNavigationCardTheme(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      descriptionTextStyle: descriptionTextStyle ?? this.descriptionTextStyle,
    );
  }

  @override
  ThemeExtension<InfoNavigationCardTheme> lerp(
      covariant ThemeExtension<InfoNavigationCardTheme>? other, double t) {
    if (other is! InfoNavigationCardTheme) {
      return this;
    }
    return InfoNavigationCardTheme(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
      descriptionTextStyle: TextStyle.lerp(descriptionTextStyle, other.descriptionTextStyle, t)!,
    );
  }
}

extension BuildContextExt on BuildContext {
  InfoNavigationCardTheme get infoNavCardTheme =>
      Theme.of(this).extension<InfoNavigationCardTheme>()!;
}
