import 'package:bread/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoNavigationCard extends StatelessWidget {
  const InfoNavigationCard({
    super.key,
    required this.title,
    required this.image,
    this.isTitleWithIcon = false,
    this.onTap,
  });
  final String title;
  final String image;
  final bool isTitleWithIcon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    const double radius = 20;
    var splashColor = AppColors.orangeDark.withOpacity(0.2);
    return Center(
      child: Material(
        color: Theme.of(context).focusColor,
        borderRadius: BorderRadius.circular(radius),
        child: InkWell(
          splashColor: splashColor,
          highlightColor: Colors.transparent,
          borderRadius: BorderRadius.circular(radius),
          onTap: onTap,
          child: SizedBox(
            width: 100,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 12),
                Image.asset(image, width: 45.5),
                const Spacer(),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    if (isTitleWithIcon) const SizedBox(width: 5),
                    if (isTitleWithIcon)
                      SvgPicture.asset('assets/icons/transition_icon.svg', width: 12),
                  ],
                ),
                const SizedBox(height: 11),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
