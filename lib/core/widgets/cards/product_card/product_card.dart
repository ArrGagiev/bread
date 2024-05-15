import 'package:bread/core/constants/app_typography.dart';
import 'package:bread/core/constants/app_colors.dart';
import 'package:bread/core/widgets/cards/product_card/widgets/area/no_product_area.dart';
import 'package:bread/core/widgets/cards/product_card/widgets/area/price_addbasket_area.dart';
import 'package:bread/core/widgets/cards/product_card/widgets/area/quantity_selection_area.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  final String image = 'assets/images/bread.png';
  final String description = 'Хлеб «Ароматный» с кориандром (часть изделия)';
  final String quantity = '300 гр';

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
                    Center(
                      child: Image.asset(image, height: 70), //todo: image <---
                    ),
                    Positioned(
                      top: 8,
                      right: 8,
                      child: Icon(
                        Icons.favorite_border, //todo: icon favorite <---
                        color: AppColors.brown.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 7),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  description, //todo: description <---
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              const SizedBox(height: 4),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  quantity, //todo: quantity <---
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTypography.bodyXSmall.copyWith(color: AppColors.gray),
                ),
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                child: const Stack(
                  children: [
                    Visibility(
                      visible: true,
                      child: PriceAddBasketArea(price: '36.42', text: '₽/шт'), //! price <---
                    ),
                    Visibility(
                      visible: false,
                      child: NoProductArea(), //! no product info <---
                    ),
                    Visibility(
                      visible: false,
                      child: QuantitySelectionArea(), //! selection button <---
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
