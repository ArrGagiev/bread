import 'package:bread/features/registration/verify_code_page/ui/bloc/verify_code_bloc.dart';
import 'package:bread/core/themes/extentions/registration_theme.dart';
import 'package:bread/core/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'ui/widgets/verify_code_again.dart';
import 'ui/widgets/pin_code_field.dart';
import 'package:flutter/material.dart';
import 'ui/widgets/verify_title.dart';
import 'dart:developer';

class VerifyCodePage extends StatelessWidget {
  const VerifyCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VerifyCodeBloc(),
      child: BlocConsumer<VerifyCodeBloc, VerifyCodeState>(
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
                        SizedBox(height: 148),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: VerifyTitle(),
                        ),
                        SizedBox(height: 34),
                        PinCodeField(),
                        SizedBox(height: 22),
                        VerifyCodeAgain(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
        // bloc listener
        listener: (BuildContext context, VerifyCodeState state) {
          if (state is VerifyCodeSuccessState) {
            log('state is VerifyCodeSuccess');
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const BottomNavBar()),
            );
          }
          //todo: показать всплывашку с ошибкой
          if (state is VerifyCodeErrorState) log('=====> ${state.error}');
        },
      ),
    );
  }
}
