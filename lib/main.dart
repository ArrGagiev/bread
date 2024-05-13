import 'package:bread/core/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:bread/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //todo: root
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //todo: отключает поднятие bottom_bar вверх,
      //todo: при открытии клавиатуры
      resizeToAvoidBottomInset: false,
      // body: ,
      body: BottomNavBar(),
    );
  }
}

final ThemeData lightTheme = ThemeData(
  useMaterial3: false,
  scaffoldBackgroundColor: AppColors.white,
  // elevatedButtonTheme: appElevatedButtonTheme,
);

final ElevatedButtonThemeData appElevatedButtonTheme = ElevatedButtonThemeData(
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed)) {
          return AppColors.orangeDark;
        }
        return AppColors.orange;
      },
    ),
    foregroundColor: MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed)) {
          return AppColors.white;
        }
        return AppColors.white;
      },
    ),
  ),
);
