import 'package:bread/features/registration/login_page/ui/bloc/login_bloc.dart';
import 'package:bread/core/widgets/text_form/text_form_field.dart';
import 'package:bread/core/widgets/buttons/primary_button.dart';
import 'package:bread/core/constants/app_typography.dart';
import 'package:bread/core/constants/app_colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class LoginCardContent extends StatefulWidget {
  const LoginCardContent({super.key});

  @override
  State<LoginCardContent> createState() => _LoginCardContentState();
}

class _LoginCardContentState extends State<LoginCardContent> {
  TextEditingController controllerNumber = TextEditingController();
  bool isValidNumber = false;

  bool _onValidationNumber(bool isValid) {
    setState(() {
      isValidNumber = isValid;
    });
    return isValidNumber;
  }

  @override
  Widget build(BuildContext context) {
    var loginBloc = context.read<LoginBloc>();
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Column(
          children: [
            Text(
              'Добро пожаловать!',
              style: AppTypography.h3.copyWith(color: AppColors.brown),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Text(
              'Введите номер телефона, чтобы войти в приложение или стать клиентом',
              style: AppTypography.bodyLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            AppTextForm(
              controller: controllerNumber,
              type: ValidationType.number,
              labelText: 'Номер телефона',
              onValidation: _onValidationNumber,
            ),
            const SizedBox(height: 28),
            state is LoginLoadingState
                ? const CircularProgressIndicator()
                : PrimaryButton(
                    title: 'Получить код',
                    onPressed: isValidNumber
                        ? () => loginBloc.add(SendingPhoneNumber(number: controllerNumber.text))
                        : null,
                  ),
          ],
        );
      },
    );
  }
}
