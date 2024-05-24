import 'package:bread/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppBarSearchField extends StatelessWidget {
  const AppBarSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        onTapOutside: (PointerDownEvent event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        cursorColor: AppColors.orange,
        decoration: InputDecoration(
          fillColor: AppColors.lightGray,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        ),
      ),
    );
  }
}
