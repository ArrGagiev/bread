import 'package:bread/core/constants/app_typography.dart';
import 'package:bread/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class HitOfSalesArea extends StatelessWidget {
  const HitOfSalesArea({super.key, required this.visible});
  final bool visible;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible, //todo: hit of sales visible <---
      child: Container(
        width: 76,
        height: 12,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: AppColors.deepOrange,
        ),
        child: Center(
          child: Text(
            'ХИТ ПРОДАЖ',
            style: AppTypography.bodyXSmall.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
