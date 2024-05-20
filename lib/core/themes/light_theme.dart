import 'package:bread/core/constants/app_typography.dart';
import 'package:bread/core/constants/app_colors.dart';
import 'package:bread/core/themes/theme_extension.dart';
import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  useMaterial3: false,
  primarySwatch: Colors.orange,
  appBarTheme: appBarTheme(),
  scaffoldBackgroundColor: AppColors.white,
  cardTheme: lightProductCardTheme(),
  //* конкретно этот параметр задаю для темs карточки info_navigation_card
  focusColor: AppColors.beige,
  textTheme: lightTextTheme(),
  extensions: <ThemeExtension<dynamic>>[
    lightNavBarTheme, //todo: цвета кастомного навбара
  ],
);

CardTheme lightProductCardTheme() {
  return const CardTheme(
    elevation: 5,
    color: AppColors.white,
    shadowColor: AppColors.gray,
  );
}

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

TextTheme lightTextTheme() {
  return TextTheme(
    // headlineLarge для заголовка разделов страницы
    headlineLarge: AppTypography.h3.copyWith(color: AppColors.brown),
    // headlineMedium для описания карточки продукта
    headlineMedium: AppTypography.h7.copyWith(color: AppColors.black),
    // headlineSmall для цены карточки продукта
    headlineSmall: AppTypography.h5.copyWith(color: AppColors.black),
    // bodyLarge для описания info_navigation карточки
    bodySmall: AppTypography.bodySmall.copyWith(color: AppColors.black),
  );
}
