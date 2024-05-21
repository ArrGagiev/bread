import 'package:bread/core/themes/extentions/info_navigation_card_theme.dart';
import 'package:bread/core/themes/extentions/bottom_navbar_theme.dart';
import 'package:bread/core/constants/app_typography.dart';
import 'package:bread/core/constants/app_colors.dart';
import 'package:bread/core/themes/extentions/product_card_theme.dart';
import 'package:flutter/material.dart';

final ThemeData darkTheme = ThemeData(
  useMaterial3: false,
  primarySwatch: Colors.orange,
  appBarTheme: darkAppBarTheme(),
  scaffoldBackgroundColor: AppColors.black,
  textTheme: darkTextTheme(),
  extensions: <ThemeExtension<dynamic>>[
    darkNavBarTheme,
    darkInfoNavCardTheme,
    darkProductCardTheme,
  ],
);

AppBarTheme darkAppBarTheme() {
  return const AppBarTheme(
    backgroundColor: AppColors.black,
    iconTheme: IconThemeData(color: AppColors.orange),
  );
}

InfoNavigationCardTheme darkInfoNavCardTheme = InfoNavigationCardTheme(
  backgroundColor: AppColors.darkCardColor,
  descriptionTextStyle: AppTypography.bodySmall.copyWith(color: AppColors.white),
);

ProductCardTheme darkProductCardTheme = ProductCardTheme(
  backgroundColor: AppColors.darkProductCardColor,
  shadowColor: Colors.transparent,
  descriptionTextStyle: AppTypography.h7.copyWith(color: AppColors.white),
  priceTextStyle: AppTypography.h5.copyWith(color: AppColors.white),
);

BottomNavBarTheme darkNavBarTheme = BottomNavBarTheme(
  backgroundColor: AppColors.black,
  shadowColor: AppColors.darkBottomShadow.withOpacity(0.5),
  activeIconColor: AppColors.orange,
  inactiveIconColor: AppColors.white,
);

TextTheme darkTextTheme() {
  return TextTheme(
    // headlineLarge для заголовка разделов страницы
    headlineLarge: AppTypography.h3.copyWith(color: AppColors.white),
  );
}
