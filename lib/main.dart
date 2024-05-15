import 'package:bread/core/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:bread/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme, //todo: app theme <---
      home: const Scaffold(
        // отключает поднятие bottom_bar вверх, при открытии клавиатуры
        resizeToAvoidBottomInset: false,
        // body: ,
        body: BottomNavBar(),
      ),
    );
  }
}

//? light theme
final ThemeData lightTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.white,
    iconTheme: IconThemeData(color: AppColors.black),
  ),
  useMaterial3: false,
  scaffoldBackgroundColor: AppColors.white,
  // cardColor: AppColors.white,
  cardTheme: const CardTheme(
    elevation: 5,
    color: AppColors.white,
    shadowColor: AppColors.gray,
  ),
  focusColor: AppColors.beige,
);

//! dark theme
final ThemeData darkTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.black,
    iconTheme: IconThemeData(color: AppColors.orange),
  ),
  useMaterial3: false,
  scaffoldBackgroundColor: AppColors.black,
  //todo: тема темной карточки продукта
  cardTheme: const CardTheme(
    color: AppColors.darkProductCardColor,
    shadowColor: Colors.transparent,
  ),
  focusColor: AppColors.darkCardColor,
);
