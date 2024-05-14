import 'package:bread/core/constants/app_colors.dart';
import 'package:bread/core/constants/app_typography.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 138,
        height: 227,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                margin: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: AppColors.lightGray,
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Stack(
                  fit: StackFit.expand,
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/images/bread.png',
                      height: 50,
                      fit: BoxFit.fitHeight,
                    ),
                    const Positioned(
                      top: 8,
                      right: 8,
                      child: Icon(Icons.favorite_border),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 7),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                child: const Text(
                  'Хлеб «Ароматный» с кориандром (часть изделия)',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: AppTypography.h7,
                ),
              ),
              const SizedBox(height: 4),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  '300 гр',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTypography.bodyXSmall.copyWith(color: AppColors.gray),
                ),
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
              ),
              const SizedBox(height: 4),
            ],
          ),
        ),
      ),
    );
  }
}
