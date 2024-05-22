import 'package:bread/core/constants/app_colors.dart';
import 'package:bread/core/constants/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum ValidationType {
  number,
  email,
  min3Chars,
}

class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    this.type,
    required this.labelText,
    this.maxLines,
  });

  final ValidationType? type;
  final String labelText;
  final int? maxLines;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  final _formKey = GlobalKey<FormState>();
  final _controller = TextEditingController();
  bool _showErrorIcon = false; // Флаг для отображения иконки ошибки

  void _onSubmit() {
    _formKey.currentState!.validate();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  String? _validateInput(String? value) {
    if (value != null) {
      switch (widget.type) {
        case ValidationType.number:
          if (!RegExp(r"^\+?\d{10,13}$").hasMatch(value)) {
            _showErrorIcon = true;
            return 'Некорректный номер телефона';
          }
          break;
        case ValidationType.email:
          if (!RegExp(
                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$")
              .hasMatch(value)) {
            _showErrorIcon = true;
            return 'Некорректный email';
          }
          break;
        case ValidationType.min3Chars:
          if (value.length < 3) {
            _showErrorIcon = true;
            return 'Введите не менее 3 символов';
          }
          break;
        default:
          _showErrorIcon = false; // Сбросить флаг ошибки
          return null;
      }
    }
    _showErrorIcon = false; // Сбросить флаг ошибки
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: TextFormField(
        controller: _controller,
        maxLines: widget.maxLines,

        onTapOutside: (PointerDownEvent event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        // активный текст
        style: AppTypography.bodyLarge, //todo: меняется вместе с темой <---
        decoration: inputDecoration.copyWith(
          labelText: widget.labelText,
          suffixIcon: _showErrorIcon
              ? Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: SvgPicture.asset('assets/icons/error_icon.svg'),
                )
              : null,
        ),
        //----------------------------------------------------------------------
        //----------------------------------------------------------------------
        validator: _validateInput,
        onChanged: (text) {
          setState(() {
            _onSubmit();
          });
        },
        //----------------------------------------------------------------------
        //----------------------------------------------------------------------
      ),
    );
  }
}

OutlineInputBorder _otlineBorder({required Color color}) {
  return OutlineInputBorder(
    borderSide: BorderSide(color: color, width: 1),
    borderRadius: const BorderRadius.all(Radius.circular(16)),
  );
}

final inputDecoration = InputDecoration(
  contentPadding: const EdgeInsets.all(16),
  // бордеры
  border: _otlineBorder(color: AppColors.input),
  errorBorder: _otlineBorder(color: AppColors.red),
  enabledBorder: _otlineBorder(color: AppColors.input),
  focusedBorder: _otlineBorder(color: AppColors.orange),
  disabledBorder: _otlineBorder(color: AppColors.disabled),
  // текст плавающего заголовка ---------------------------------------------------
  alignLabelWithHint: true, //всегда наверху
  floatingLabelBehavior: FloatingLabelBehavior.auto,
  labelStyle: AppTypography.bodyLarge.copyWith(color: AppColors.gray),
  floatingLabelStyle: AppTypography.bodySmall.copyWith(color: AppColors.gray),
  // ------------------------------------------------------------------------------
  errorStyle: AppTypography.bodySmall.copyWith(color: AppColors.red),
  suffixIconConstraints: const BoxConstraints(minWidth: 20, minHeight: 20),
);
