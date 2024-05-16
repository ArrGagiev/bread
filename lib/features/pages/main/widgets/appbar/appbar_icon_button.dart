import 'package:bread/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarIconButton extends StatelessWidget {
  const AppBarIconButton({super.key, required this.icon, this.onPressed});

  final String icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30,
      child: Theme(
        data: Theme.of(context).copyWith(highlightColor: Colors.transparent),
        child: FloatingActionButton(
          elevation: 0,
          focusElevation: 0,
          highlightElevation: 0,
          backgroundColor: Colors.transparent,
          splashColor: AppColors.orangeDark.withOpacity(0.2),
          onPressed: onPressed,
          child: SvgPicture.asset(
            icon,
            colorFilter: ColorFilter.mode(
              Theme.of(context).appBarTheme.iconTheme!.color!, //! iconTheme.color <---
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}
