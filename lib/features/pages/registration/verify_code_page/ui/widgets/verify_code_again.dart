import 'package:bread/core/constants/app_typography.dart';
import 'package:bread/core/themes/extentions/registration_theme.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:bread/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'countdown_timer.dart';

class VerifyCodeAgain extends StatelessWidget {
  const VerifyCodeAgain({super.key});

  @override
  Widget build(BuildContext context) {
    CountdownController countdownController = CountdownController(autoStart: true);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Получить СМС код можно через',
              style: context.registrationTheme.descriptionTextStyle,
            ),
            const SizedBox(width: 3),
            CountdownTimer(controller: countdownController),
          ],
        ),
        GestureDetector(
          onTap: () => countdownController.restart(),
          child: Text(
            'Получить код',
            style: AppTypography.bodyMedium.copyWith(
              color: AppColors.orange,
              height: 1.5,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
