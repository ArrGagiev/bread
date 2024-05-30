import 'package:flutter/material.dart';

class RegistrationTheme extends ThemeExtension<RegistrationTheme> {
  final Color backgroundColor;
  final TextStyle descriptionTextStyle;
  final TextStyle bodyTextStyle;

  const RegistrationTheme({
    required this.backgroundColor,
    required this.descriptionTextStyle,
    required this.bodyTextStyle,
  });

  @override
  ThemeExtension<RegistrationTheme> copyWith({
    Color? backgroundColor,
    TextStyle? descriptionTextStyle,
    TextStyle? priceTextStyle,
  }) {
    return RegistrationTheme(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      descriptionTextStyle: descriptionTextStyle ?? this.descriptionTextStyle,
      bodyTextStyle: priceTextStyle ?? this.bodyTextStyle,
    );
  }

  @override
  ThemeExtension<RegistrationTheme> lerp(
      covariant ThemeExtension<RegistrationTheme>? other, double t) {
    if (other is! RegistrationTheme) {
      return this;
    }
    return RegistrationTheme(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
      descriptionTextStyle: TextStyle.lerp(descriptionTextStyle, other.descriptionTextStyle, t)!,
      bodyTextStyle: TextStyle.lerp(bodyTextStyle, other.bodyTextStyle, t)!,
    );
  }
}

extension BuildContextExt on BuildContext {
  RegistrationTheme get registrationTheme => Theme.of(this).extension<RegistrationTheme>()!;
}
