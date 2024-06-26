import 'package:bread/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class SelectionIconButton extends StatelessWidget {
  const SelectionIconButton({super.key, this.icon, this.onPressed});

  final IconData? icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30,
      child: Theme(
        data: Theme.of(context).copyWith(highlightColor: Colors.transparent),
        child: FloatingActionButton(
          heroTag: null,
          elevation: 0,
          focusElevation: 0,
          highlightElevation: 0,
          backgroundColor: Colors.transparent,
          splashColor: AppColors.orange,
          onPressed: onPressed,
          child: Icon(icon, color: AppColors.gray),
        ),
      ),
    );
  }
}
