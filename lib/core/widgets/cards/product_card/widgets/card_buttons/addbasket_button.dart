import 'package:bread/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddBasketButton extends StatelessWidget {
  const AddBasketButton({super.key, this.onPressed});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 38,
      height: 38,
      child: Theme(
        data: Theme.of(context).copyWith(highlightColor: Colors.transparent),
        child: FloatingActionButton(
          elevation: 0,
          focusElevation: 0,
          highlightElevation: 0,
          backgroundColor: AppColors.orange,
          splashColor: AppColors.orangeDark,
          child: SvgPicture.asset('assets/icons/product_card_basket.svg'),
          onPressed: () {},
        ),
      ),
    );
  }
}
