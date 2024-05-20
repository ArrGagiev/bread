import 'package:bread/core/widgets/cards/product_card/widgets/card_basic/card_state_area.dart';
import 'package:bread/core/widgets/cards/product_card/widgets/card_basic/card_image.dart';
import 'widgets/card_basic/card_description.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  final String image = 'assets/images/bread.png';
  final String description = 'Хлеб «Ароматный» с кориандром (часть изделия)';
  final String weight = '300 гр';
  final bool isHitOfSales = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 156,
        height: 235,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //--------------------------------------------------------------------- image
              ProductCardImage(image: image, isHitOfSales: isHitOfSales),
              const SizedBox(height: 7),
              //--------------------------------------------------------------------- description
              ProductCardDescription(description: description, weight: weight),
              const Spacer(),
              //--------------------------------------------------------------------- area
              const ProductCardStateArea(), //todo: работу с корзиной обернуть в bloc корзины!
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
