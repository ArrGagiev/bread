import 'package:bread/core/widgets/cards/product_card/widgets/card_buttons/favourite_button.dart';
import 'package:bread/core/widgets/cards/product_card/widgets/card_area/hit_of_sales_area.dart';
import 'package:bread/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ProductCardImage extends StatelessWidget {
  const ProductCardImage({
    super.key,
    required this.image,
    required this.isHitOfSales,
  });
  final String image;
  final bool isHitOfSales;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Center(
            child: Image.asset(image, height: 70), //todo: image <---
          ),
          const Positioned(
            top: 8,
            right: 8,
            child: FavouriteButton(), //todo: favourite button <---
          ),
          Positioned(
            bottom: 8,
            left: 11,
            child: HitOfSalesArea(visible: isHitOfSales),
          )
        ],
      ),
    );
  }
}
