import 'package:bread/features/pages/registration/login_page/data/login_repository.dart';
import 'package:bread/features/pages/registration/login_page/bloc/login_bloc.dart';
import 'package:bread/core/widgets/text_form/text_form_field.dart';
import 'package:bread/core/widgets/buttons/primary_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: BlocBuilder<LoginBloc, LoginState>(
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
                    child: PrimaryButton(
                      title: 'Отправить',
                      onPressed: isValidNumber
                          ? () {
                              context
                                  .read<LoginBloc>()
                                  .add(SendingPhoneNumber(number: controllerNumber.text));
                            }
                          : null,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
