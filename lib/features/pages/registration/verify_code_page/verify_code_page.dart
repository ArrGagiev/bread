import 'dart:developer';
import 'package:bread/core/constants/app_colors.dart';
import 'package:bread/core/constants/app_typography.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';

class VerifyCodePage extends StatelessWidget {
  const VerifyCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      backgroundColor: AppColors.beige,
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 148)),
          const SliverToBoxAdapter(child: Text('Введите СМС код')),
          const SliverToBoxAdapter(child: SizedBox(height: 13)),
          const SliverToBoxAdapter(child: Text('Мы отправили код на номер +7 902 782 14 16')),
          const SliverToBoxAdapter(child: SizedBox(height: 34)),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: PinCodeTextField(
                enableActiveFill: true,
                cursorColor: AppColors.orange,
                keyboardType: TextInputType.number,
                controller: controller,
                obscureText: false,
                length: 6,
                textStyle: AppTypography.h3,
                animationType: AnimationType.fade,
                animationDuration: const Duration(milliseconds: 200),
                onChanged: (value) {
                  log(value);
                },
                appContext: context,
                pinTheme: pinTheme,
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 22)),
          SliverToBoxAdapter(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Получить СМС код можно через 00:46',
                    style: AppTypography.bodySmall.copyWith(color: AppColors.darkGray),
                  ),
                  TextSpan(
                    text: '\nПолучить код',
                    style: AppTypography.bodyMedium.copyWith(
                      color: AppColors.orange,
                      height: 1.5,
                      decoration: TextDecoration.underline,
                    ),
                    // recognizer: TapGestureRecognizer()
                    // ..onTap = () => UrlLauncher.goTo('https://google.com'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

final PinTheme pinTheme = PinTheme(
  shape: PinCodeFieldShape.box,
  borderRadius: BorderRadius.circular(14),
  fieldWidth: 47,
  fieldHeight: 60,
  inactiveColor: AppColors.white,
  activeColor: Colors.transparent,
  selectedColor: Colors.transparent,
  activeFillColor: AppColors.white,
  inactiveFillColor: AppColors.white,
  selectedFillColor: AppColors.white,
);
