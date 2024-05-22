import 'dart:developer';

import 'package:bread/core/constants/app_colors.dart';
import 'package:bread/core/constants/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    required this.labelText,
  });

  final String labelText;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();

  void _onSubmit() {
    log('validated');
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: TextFormField(
        controller: _controller,
        validator: (value) {},
        onTapOutside: (PointerDownEvent event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        //todo: активный текст
        style: AppTypography.bodyLarge,
        //todo: при использовании multiline
        maxLines: 1,
        //todo: ---------------------------
        decoration: InputDecoration(
          //todo: бордеры
          contentPadding: const EdgeInsets.all(16),
          enabledBorder: _otlineBorder(color: AppColors.input),
          errorBorder: _otlineBorder(color: AppColors.red),
          focusedBorder: _otlineBorder(color: AppColors.orange),
          disabledBorder: _otlineBorder(color: AppColors.disabled),
          //todo: текст плавающего заголовка
          labelText: widget.labelText,
          alignLabelWithHint: true, //всегда наверху
          labelStyle: AppTypography.bodyLarge.copyWith(color: AppColors.gray),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          floatingLabelStyle: AppTypography.bodySmall.copyWith(color: AppColors.gray),
          //! текст при ошибке
          errorStyle: AppTypography.bodySmall.copyWith(color: AppColors.red),
          //! иконка ошибки
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 16),
            child: SvgPicture.asset('assets/icons/error_icon.svg'),
          ),
          suffixIconConstraints: const BoxConstraints(minWidth: 20, minHeight: 20),
          //! ----------------
        ),
      ),
    );
  }

  OutlineInputBorder _otlineBorder({required Color color}) {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      borderSide: BorderSide(color: color, width: 1),
    );
  }
}
