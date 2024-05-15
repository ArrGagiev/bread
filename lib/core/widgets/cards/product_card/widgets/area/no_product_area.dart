import 'package:bread/core/constants/app_typography.dart';
import 'package:bread/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class NoProductArea extends StatelessWidget {
  const NoProductArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.redLight,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: const Center(
        child: Text(
          'Сегодня не сможем испечь',
          style: AppTypography.bodySmall,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
