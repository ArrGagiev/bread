import 'package:bread/core/constants/app_typography.dart';
import 'package:bread/core/constants/app_colors.dart';
import 'package:bread/core/themes/theme_extension.dart';
import 'package:flutter/material.dart';

final ThemeData darkTheme = ThemeData(
  useMaterial3: false,
  primarySwatch: Colors.orange,
  appBarTheme: darkAppBarTheme(),
  scaffoldBackgroundColor: AppColors.black,
  cardTheme: darkProductCardTheme(),
  //* конкретно этот параметр задаю для темs карточки info_navigation_card
  focusColor: AppColors.darkCardColor,
  textTheme: darkTextTheme(),
  extensions: <ThemeExtension<dynamic>>[
    darkNavBarTheme, //todo: цвета кастомного навбара
  ],
);

AppBarTheme darkAppBarTheme() {
  return const AppBarTheme(
    backgroundColor: AppColors.black,
    iconTheme: IconThemeData(color: AppColors.orange),
  );
}

CardTheme darkProductCardTheme() {
  return const CardTheme(
    color: AppColors.darkProductCardColor,
    shadowColor: Colors.transparent,
  );
}

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
    // headlineMedium для описания карточки продукта
    headlineMedium: AppTypography.h7.copyWith(color: AppColors.white),
    // headlineSmall для цены карточки продукта
    headlineSmall: AppTypography.h5.copyWith(color: AppColors.white),
    // bodyLarge для описания info_navigation карточки
    bodySmall: AppTypography.bodySmall.copyWith(color: AppColors.white),
  );
}
