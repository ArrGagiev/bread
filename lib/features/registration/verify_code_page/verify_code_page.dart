import 'package:bread/features/registration/verify_code_page/ui/bloc/verify_code_bloc.dart';
import 'package:bread/core/widgets/error_snack_bar/error_snack_bar.dart';
import 'package:bread/core/widgets/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:bread/core/themes/extentions/registration_theme.dart';
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
              body: CustomScrollView(
                slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Column(
                      children: [
                        const SizedBox(height: 148),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: VerifyTitle(),
                        ),
                        const SizedBox(height: 34),
                        state is VerifyCodeLoadingState
                            ? const CircularProgressIndicator()
                            : const PinCodeField(),
                        const SizedBox(height: 22),
                        const VerifyCodeAgain(),
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
          //! Error State Message
          if (state is VerifyCodeErrorState) {
            ErrorSnackBar.showMessage(context, message: state.error);
          }
        },
      ),
    );
  }
}
