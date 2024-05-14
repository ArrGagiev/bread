import 'package:bread/core/constants/app_typography.dart';
import 'package:bread/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class SoftButton extends StatelessWidget {
  const SoftButton({
    super.key,
    required this.title,
    this.subtitle,
    this.icon,
    this.margin,
    this.onPressed,
  });

  final String title;
  final String? subtitle;
  final Widget? icon;
  final EdgeInsetsGeometry? margin;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        style: ButtonStyle(
          // цвет текста кнопки
          foregroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return AppColors.gray;
              }
              return AppColors.orange;
            },
          ),
          // задал цвет кнопки при разных сценариях
          backgroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              // если кнопка неактивна
              if (states.contains(MaterialState.disabled)) {
                return Colors.transparent;
              }
              // цвет активной кнопки
              return Colors.transparent;
            },
          ),
          side: MaterialStateProperty.resolveWith<BorderSide?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return const BorderSide(color: AppColors.gray);
              } else {
                return const BorderSide(color: AppColors.orange);
              }
            },
          ),
          // задал прозрачность нажатия (((сплеша)))
          overlayColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) =>
                states.contains(MaterialState.pressed) ? AppColors.orange.withOpacity(0.2) : null,
          ),
          // настроил статичную тень кнопки
          elevation: MaterialStateProperty.all(0),
          // закругление кнопки
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          ),
          // тут я по сути установил только высоту
          minimumSize: MaterialStateProperty.all(
            Size(MediaQuery.of(context).size.width, 56),
          ),
          iconColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return AppColors.gray;
              } else {
                return AppColors.orange;
              }
            },
          ),
          iconSize: MaterialStateProperty.all(24),
        ),
        // тут передается иконка
        icon: icon ?? const SizedBox(),
        // а здесь текст и по необходимости вспомогательный текст
        label: subtitle == null
            ? Text(title, style: AppTypography.buttonLarge)
            : Column(
                children: [
                  Text(title, style: AppTypography.buttonLarge),
                  Text(title, style: AppTypography.buttonSmall)
                ],
              ),
      ),
    );
  }
}
