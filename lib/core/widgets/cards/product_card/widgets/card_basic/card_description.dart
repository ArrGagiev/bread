import 'package:bread/core/constants/app_typography.dart';
import 'package:bread/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ProductCardDescription extends StatelessWidget {
  const ProductCardDescription({
    super.key,
    required this.description,
    required this.weight,
  });

  final String description;
  final String weight;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            description, //todo: description <---
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 4),
          Text(
            weight, //todo: weight(вес) <---
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTypography.bodyXSmall.copyWith(color: AppColors.gray),
          ),
        ],
      ),
    );
  }
}
