import 'package:bread/core/themes/extentions/bottom_navbar_theme.dart';
import 'package:bread/core/constants/app_typography.dart';
import 'package:bread/core/constants/app_colors.dart';
import 'package:bread/core/themes/extentions/product_card_theme.dart';
import 'package:bread/core/themes/extentions/registration_theme.dart';
import 'extentions/info_navigation_card_theme.dart';
import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  useMaterial3: false,
  appBarTheme: appBarTheme(),
  scaffoldBackgroundColor: AppColors.white,
  textTheme: lightTextTheme(),
  extensions: <ThemeExtension<dynamic>>[
    lightNavBarTheme,
    lightInfoNavCardTheme,
    lightProductCardTheme,
    lightRegistrationTheme,
  ],
);

ProductCardTheme lightProductCardTheme = ProductCardTheme(
  backgroundColor: AppColors.white,
  shadowColor: AppColors.gray.withOpacity(0.2),
  descriptionTextStyle: AppTypography.h7.copyWith(color: AppColors.black),
  priceTextStyle: AppTypography.h5.copyWith(color: AppColors.black),
);

InfoNavigationCardTheme lightInfoNavCardTheme = InfoNavigationCardTheme(
  backgroundColor: AppColors.beige,
  descriptionTextStyle: AppTypography.bodySmall.copyWith(color: AppColors.black),
);

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    backgroundColor: AppColors.white,
    iconTheme: IconThemeData(color: AppColors.black),
  );
}

BottomNavBarTheme lightNavBarTheme = BottomNavBarTheme(
  backgroundColor: AppColors.white,
  shadowColor: AppColors.gray.withOpacity(0.1),
  activeIconColor: AppColors.orange,
  inactiveIconColor: AppColors.brown,
);

RegistrationTheme lightRegistrationTheme = RegistrationTheme(
  backgroundColor: AppColors.beige,
  bodyTextStyle: AppTypography.bodyLarge.copyWith(color: AppColors.black),
  descriptionTextStyle: AppTypography.bodyMedium.copyWith(color: AppColors.gray),
);

TextTheme lightTextTheme() {
  return TextTheme(
    // для заголовка разделов страницы
    headlineLarge: AppTypography.h3.copyWith(color: AppColors.brown),
  );
}
