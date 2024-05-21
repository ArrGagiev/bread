import 'package:bread/core/widgets/cards/product_card/widgets/card_buttons/addbasket_button.dart';
import 'package:bread/core/themes/extentions/product_card_theme.dart';
import 'package:bread/core/constants/app_typography.dart';
import 'package:bread/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class PriceAddBasketArea extends StatelessWidget {
  const PriceAddBasketArea({super.key, this.onPressed, this.price, this.text});
  final void Function()? onPressed;
  final String? price;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: price ?? '',
                style: context.productCardTheme.priceTextStyle,
              ),
              TextSpan(
                text: ' ${text ?? ''}',
                style: AppTypography.bodySmall.copyWith(color: AppColors.gray),
              )
            ],
          ),
        ),
        AddBasketButton(onPressed: onPressed),
      ],
    );
  }
}
