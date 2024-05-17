import 'package:bread/core/widgets/cards/product_card/widgets/card_buttons/favourite_button.dart';
import 'package:bread/core/widgets/cards/product_card/widgets/area/quantity_selection_area.dart';
import 'package:bread/core/widgets/cards/product_card/widgets/area/price_addbasket_area.dart';
import 'package:bread/core/widgets/cards/product_card/widgets/area/no_product_area.dart';
import 'package:bread/core/constants/app_typography.dart';
import 'package:bread/core/constants/app_colors.dart';
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
                    const Positioned(
                      top: 8,
                      right: 8,
                      child: FavouriteButton(), //todo: favourite button <---
                    ),
                    Visibility(
                      visible: isHitOfSales, //todo: hit of sales visible <---
                      child: Positioned(
                        bottom: 8,
                        left: 11,
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
                      ),
                    )
                  ],
                ),
              ),
              //--------------------------------------------------------------------- description
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
                  weight, //todo: weight(вес) <---
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTypography.bodyXSmall.copyWith(color: AppColors.gray),
                ),
              ),
              const Spacer(),
              //--------------------------------------------------------------------- area
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
