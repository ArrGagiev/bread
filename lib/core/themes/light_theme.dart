import 'package:bread/core/constants/app_typography.dart';
import 'package:bread/core/constants/app_colors.dart';
import 'package:bread/core/themes/theme_extension.dart';
import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  useMaterial3: false,
  appBarTheme: const AppBarTheme(
    // backgroundColor аппбара
    backgroundColor: AppColors.white,
    iconTheme: IconThemeData(color: AppColors.black),
  ),
  //! задаю цвет кастомного боттом навбара
  bottomAppBarTheme: BottomAppBarTheme(
    color: AppColors.white,
    shadowColor: AppColors.gray.withOpacity(0.1),
  ),
  //! ----------------------------------------
  extensions: const <ThemeExtension<dynamic>>[
    AppThemeColors(
      activeIconColor: AppColors.orange,
      inactiveIconColor: AppColors.brown,
    ),
  ],
  //! ----------------------------------------
  //backgroundColor страницы
  scaffoldBackgroundColor: AppColors.white,
  // тема product_card
  cardTheme: const CardTheme(
    elevation: 5,
    color: AppColors.white,
    shadowColor: AppColors.gray,
  ),
  //* конкретно этот параметр задаю для темs карточки info_navigation_card
  focusColor: AppColors.beige,
  textTheme: TextTheme(
    // headlineLarge для заголовка разделов страницы
    headlineLarge: AppTypography.h3.copyWith(color: AppColors.brown),
    // headlineMedium для описания карточки продукта
    headlineMedium: AppTypography.h7.copyWith(color: AppColors.black),
    // headlineSmall для цены карточки продукта
    headlineSmall: AppTypography.h5.copyWith(color: AppColors.black),
  ),
);
