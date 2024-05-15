import 'package:bread/core/constants/app_typography.dart';
import 'package:bread/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

final ThemeData darkTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    // backgroundColor аппбара
    backgroundColor: AppColors.black,
    iconTheme: IconThemeData(color: AppColors.orange),
  ),
  useMaterial3: false,
  // backgroundColor страницы
  scaffoldBackgroundColor: AppColors.black,
  // тема product_card
  cardTheme: const CardTheme(
    color: AppColors.darkProductCardColor,
    shadowColor: Colors.transparent,
  ),
  //тема карточки info_navigation_card
  focusColor: AppColors.darkCardColor,
  textTheme: TextTheme(
    // headlineLarge для заголовка разделов страницы
    headlineLarge: AppTypography.h3.copyWith(color: AppColors.white),
    // headlineMedium для описания карточки продукта
    headlineMedium: AppTypography.h7.copyWith(color: AppColors.white),
    // headlineSmall для цены карточки продукта
    headlineSmall: AppTypography.h5.copyWith(color: AppColors.white),
  ),
);
