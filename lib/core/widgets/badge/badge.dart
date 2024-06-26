import 'package:badges/badges.dart';
import 'package:bread/core/constants/app_typography.dart';
import 'package:bread/core/constants/app_colors.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';

class IconBadge extends StatelessWidget {
  const IconBadge({super.key, required this.value});
  final String value;

  @override
  Widget build(BuildContext context) {
    //todo: IgnorePointer, для того чтобы тап происходил не по иконке, а по значку
    return IgnorePointer(
      //todo: ClipRRect закругляет badges.BadgeShape.square
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: badges.Badge(
          badgeAnimation: const badges.BadgeAnimation.slide(
            slideTransitionPositionTween:
                SlideTween(begin: Offset(-0.5, 0.1), end: Offset(0.0, 0.0)),
          ),
          badgeContent: Text(
            value,
            style: AppTypography.bodyXSmall.copyWith(color: AppColors.white),
          ),
          badgeStyle: const badges.BadgeStyle(
            badgeColor: AppColors.red,
            //todo: так value отображается ровно по центру
            padding: EdgeInsets.fromLTRB(5, 2.2, 5, 0.8),
            shape: badges.BadgeShape.square,
          ),
        ),
      ),
    );
  }
}
