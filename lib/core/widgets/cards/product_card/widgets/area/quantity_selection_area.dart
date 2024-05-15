import 'package:bread/core/constants/app_colors.dart';
import 'package:bread/core/constants/app_typography.dart';
import 'package:bread/core/widgets/cards/product_card/widgets/card_buttons/selection_icon_button.dart';
import 'package:flutter/material.dart';

class QuantitySelectionArea extends StatelessWidget {
  const QuantitySelectionArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      decoration: const BoxDecoration(
        color: AppColors.beige,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            const Text('8 шт', style: AppTypography.h5),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SelectionBittonIcon(
                    icon: Icons.add,
                    onPressed: () {},
                  ),
                  SelectionBittonIcon(
                    icon: Icons.remove,
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
