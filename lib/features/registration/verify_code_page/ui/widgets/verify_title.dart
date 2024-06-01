import 'package:bread/core/themes/extentions/registration_theme.dart';
import 'package:flutter/material.dart';

class VerifyTitle extends StatelessWidget {
  const VerifyTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Введите СМС код',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(height: 13),
          Text(
            'Мы отправили код на номер \n+7 902 782 14 16',
            style: context.registrationTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
