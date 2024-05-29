import 'package:bread/features/pages/registration/login_page/ui/widgets/login_card_content.dart';
import 'package:bread/features/pages/registration/login_page/ui/widgets/terms_of_service.dart';
import 'package:bread/features/pages/registration/verify_code_page/verify_code_page.dart';
import 'package:bread/features/pages/registration/login_page/ui/widgets/login_card.dart';
import 'package:bread/features/pages/registration/login_page/ui/bloc/login_bloc.dart';
import 'package:bread/features/pages/registration/login_page/ui/widgets/logo.dart';
import 'package:bread/core/constants/app_colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'dart:developer';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: BlocConsumer<LoginBloc, LoginState>(
        builder: (context, state) {
          return const SafeArea(
            child: Scaffold(
              backgroundColor: AppColors.beige,
              body: CustomScrollView(
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
          if (state is SuccessState) {
            log('state is SendingPhoneSuccess');
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const VerifyCodePage()),
            );
          }
          if (state is ErrorState) log(state.error); //todo: показать всплывашку с ошибкой
        },
      ),
    );
  }
}
