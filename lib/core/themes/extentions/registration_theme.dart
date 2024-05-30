import 'package:flutter/material.dart';

class RegistrationTheme extends ThemeExtension<RegistrationTheme> {
  final Color backgroundColor;
  final TextStyle bodyMedium;
  final TextStyle bodyLarge;
  final TextStyle bodySmall;

  const RegistrationTheme({
    required this.backgroundColor,
    required this.bodyMedium,
    required this.bodyLarge,
    required this.bodySmall,
  });

  @override
  ThemeExtension<RegistrationTheme> copyWith({
    Color? backgroundColor,
    TextStyle? bodyMedium,
    TextStyle? bodyLarge,
    TextStyle? bodySmall,
  }) {
    return RegistrationTheme(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      bodyMedium: bodyMedium ?? this.bodyMedium,
      bodyLarge: bodyLarge ?? this.bodyLarge,
      bodySmall: bodySmall ?? this.bodySmall,
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
      bodyMedium: TextStyle.lerp(bodyMedium, other.bodyMedium, t)!,
      bodyLarge: TextStyle.lerp(bodyLarge, other.bodyLarge, t)!,
      bodySmall: TextStyle.lerp(bodySmall, other.bodySmall, t)!,
    );
  }
}

extension BuildContextExt on BuildContext {
  RegistrationTheme get registrationTheme => Theme.of(this).extension<RegistrationTheme>()!;
}
