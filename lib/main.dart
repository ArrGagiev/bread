import 'package:bread/core/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:bread/core/themes/dark_theme.dart';
import 'package:bread/core/themes/light_theme.dart';
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
      theme: darkTheme, //todo: app theme <---
      home: const Scaffold(
        // отключает поднятие bottom_bar вверх, при открытии клавиатуры
        resizeToAvoidBottomInset: false,
        // body: ,
        body: BottomNavBar(),
      ),
    );
  }
}
