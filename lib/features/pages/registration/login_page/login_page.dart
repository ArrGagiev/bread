import 'package:bread/features/pages/registration/verify_code_page/verify_code_page.dart';
import 'package:bread/features/pages/registration/login_page/ui/bloc/login_bloc.dart';
import 'package:bread/core/widgets/text_form/text_form_field.dart';
import 'package:bread/core/widgets/buttons/primary_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'dart:developer';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerNumber = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  bool isValidNumber = false;
  bool isValidEmail = false;

  bool _onValidationNumber(bool isValid) {
    setState(() {
      isValidNumber = isValid;
    });
    return isValidNumber;
  }

  bool _onValidationEmail(bool isValid) {
    setState(() {
      isValidEmail = isValid;
    });
    return isValidEmail;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: BlocConsumer<LoginBloc, LoginState>(
        builder: (context, state) {
          return Scaffold(
            body: CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(child: SizedBox(height: 100)),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: AppTextForm(
                      controller: controllerNumber,
                      type: ValidationType.number,
                      labelText: 'Номер',
                      onValidation: _onValidationNumber,
                    ),
                  ),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 20)),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: AppTextForm(
                      controller: controllerEmail,
                      type: ValidationType.email,
                      labelText: 'Почта',
                      onValidation: _onValidationEmail,
                    ),
                  ),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 20)),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: state is LoadingState
                        ? const Center(child: CircularProgressIndicator())
                        : PrimaryButton(
                            title: 'Отправить',
                            onPressed: isValidNumber
                                ? () {
                                    context.read<LoginBloc>().add(
                                        SendingPhoneNumber(
                                            number: controllerNumber.text));
                                  }
                                : null,
                          ),
                  ),
                ),
              ],
            ),
          );
        },
        //todo: ===============================================> bloc listener
        listener: (BuildContext context, LoginState state) {
          if (state is SuccessState) {
            log('state is SendingPhoneSuccess');
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const VerifyCodePage()),
            );
          }
        },
      ),
    );
  }
}
