import 'package:bread/core/constants/app_typography.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:bread/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'dart:developer';

class PinCodeField extends StatelessWidget {
  const PinCodeField({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: PinCodeTextField(
        enableActiveFill: true,
        cursorColor: AppColors.orange,
        keyboardType: TextInputType.number,
        controller: controller,
        obscureText: false,
        length: 6,
        textStyle: AppTypography.codeNumber,
        animationType: AnimationType.fade,
        animationDuration: const Duration(milliseconds: 200),
        onChanged: (value) {
          log(value);
        },
        appContext: context,
        pinTheme: _pinTheme,
      ),
    );
  }
}

final PinTheme _pinTheme = PinTheme(
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
  disabledColor: Colors.transparent,
  disabledBorderWidth: 0,
  inactiveBorderWidth: 0,
  selectedBorderWidth: 0,
  activeBorderWidth: 0,
  errorBorderWidth: 0,
  borderWidth: 0,
);
