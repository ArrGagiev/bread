import 'package:flutter/material.dart';

class ProductCardTheme extends ThemeExtension<ProductCardTheme> {
  final Color backgroundColor;
  final Color shadowColor;
  final TextStyle descriptionTextStyle;
  final TextStyle priceTextStyle;

  const ProductCardTheme({
    required this.backgroundColor,
    required this.shadowColor,
    required this.descriptionTextStyle,
    required this.priceTextStyle,
  });

  @override
  ThemeExtension<ProductCardTheme> copyWith({
    Color? backgroundColor,
    Color? shadowColor,
    TextStyle? descriptionTextStyle,
    TextStyle? priceTextStyle,
  }) {
    return ProductCardTheme(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      shadowColor: shadowColor ?? this.shadowColor,
      descriptionTextStyle: descriptionTextStyle ?? this.descriptionTextStyle,
      priceTextStyle: priceTextStyle ?? this.priceTextStyle,
    );
  }

  @override
  ThemeExtension<ProductCardTheme> lerp(
      covariant ThemeExtension<ProductCardTheme>? other, double t) {
    if (other is! ProductCardTheme) {
      return this;
    }
    return ProductCardTheme(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
      shadowColor: Color.lerp(shadowColor, other.shadowColor, t)!,
      descriptionTextStyle: TextStyle.lerp(descriptionTextStyle, other.descriptionTextStyle, t)!,
      priceTextStyle: TextStyle.lerp(priceTextStyle, other.priceTextStyle, t)!,
    );
  }
}

extension BuildContextExt on BuildContext {
  ProductCardTheme get productCardTheme => Theme.of(this).extension<ProductCardTheme>()!;
}
