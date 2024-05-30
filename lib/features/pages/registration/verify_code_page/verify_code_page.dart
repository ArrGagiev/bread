import 'package:bread/core/themes/extentions/registration_theme.dart';
import 'ui/widgets/verify_code_again.dart';
import 'ui/widgets/pin_code_field.dart';
import 'package:flutter/material.dart';

import 'ui/widgets/verify_title.dart';

class VerifyCodePage extends StatelessWidget {
  const VerifyCodePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                    child: VerifyTitle(number: '+7 902 782 14 16'),
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
  }
}


// SliverToBoxAdapter(child: SizedBox(height: 148)),
// SliverToBoxAdapter(child: Text('Введите СМС код')),
// SliverToBoxAdapter(child: SizedBox(height: 13)),
// SliverToBoxAdapter(child: Text('Мы отправили код на номер +7 902 782 14 16')),
// SliverToBoxAdapter(child: SizedBox(height: 34)),
// SliverToBoxAdapter(child: PinCodeField()),
// SliverToBoxAdapter(child: SizedBox(height: 22)),
// SliverToBoxAdapter(child: VerifyCodeAgain()),