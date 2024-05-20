import 'package:bread/core/widgets/cards/product_card/widgets/card_area/quantity_selection_area.dart';
import 'package:bread/core/widgets/cards/product_card/widgets/card_area/price_addbasket_area.dart';
import 'package:bread/core/widgets/cards/product_card/widgets/card_area/no_product_area.dart';
import 'package:flutter/material.dart';

class ProductCardStateArea extends StatelessWidget {
  const ProductCardStateArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: const Stack(
        children: [
          Visibility(
            visible: true,
            child: PriceAddBasketArea(price: '36.42', text: '₽/шт'), //todo: цена <---
          ),
          Visibility(
            visible: false,
            child: NoProductArea(), //! нет в наличии <---
          ),
          Visibility(
            visible: false,
            child: QuantitySelectionArea(), //! выбор количества <---
          ),
        ],
      ),
    );
  }
}
