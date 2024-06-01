import 'package:bread/core/constants/app_typography.dart';
import 'package:bread/core/constants/app_colors.dart';
import 'package:bread/core/themes/extentions/registration_theme.dart';
import 'package:bread/core/utils/url_launcher.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';

class TermsOfService extends StatelessWidget {
  const TermsOfService({super.key});
  //! условия обслуживания
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text:
                  'Используя это приложение, вы автоматически соглашаетесь на обработку персональных данных и принимаете условия Пользовательского соглашения',
              style: context.registrationTheme.bodySmall,
            ),
            TextSpan(
              text: '\nПользовательское соглашение',
              style: AppTypography.bodyMedium.copyWith(
                color: AppColors.orange,
                height: 1.5,
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () => UrlLauncher.goTo('https://google.com'),
            ),
            TextSpan(
              text: '\nПоложение по обработке персональных данных',
              style: AppTypography.bodyMedium.copyWith(
                color: AppColors.orange,
                height: 1.5,
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()..onTap = () => UrlLauncher.goTo('https://vk.com'),
            ),
          ],
        ),
      ),
    );
  }
}
