import 'package:bread/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppBarSearchField extends StatelessWidget {
  const AppBarSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: AppColors.lightGray,
      ),
      child: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.zero,
        ),
      ),
    );
  }
}
