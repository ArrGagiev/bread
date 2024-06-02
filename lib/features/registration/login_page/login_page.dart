import 'package:bread/features/registration/login_page/ui/widgets/login_card_content.dart';
import 'package:bread/features/registration/login_page/ui/widgets/terms_of_service.dart';
import 'package:bread/features/registration/verify_code_page/verify_code_page.dart';
import 'package:bread/features/registration/login_page/ui/widgets/login_card.dart';
import 'package:bread/features/registration/login_page/ui/bloc/login_bloc.dart';
import 'package:bread/features/registration/login_page/ui/widgets/logo.dart';
import 'package:bread/core/themes/extentions/registration_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'dart:developer';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: BlocConsumer<LoginBloc, LoginState>(
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: context.registrationTheme.backgroundColor,
              body: const CustomScrollView(
                slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Column(
                      children: [
                        SizedBox(height: 53),
                        Logo(),
                        SizedBox(height: 40),
                        LoginCard(child: LoginCardContent()),
                        Spacer(),
                        SizedBox(height: 10),
                        TermsOfService(),
                        SizedBox(height: 31),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        // bloc listener
        listener: (BuildContext context, LoginState state) {
          if (state is LoginSuccessState) {
            log('state is SendingPhoneSuccess');
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const VerifyCodePage()),
            );
          }
          //todo: показать всплывашку с ошибкой
          if (state is LoginErrorState) log('=====> ${state.error}');
        },
      ),
    );
  }
}
