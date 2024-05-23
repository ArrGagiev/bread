import 'dart:developer';

import 'package:bread/core/widgets/text_form/text_form_field.dart';
import 'package:flutter/material.dart';

class CatalogPage extends StatefulWidget {
  const CatalogPage({super.key});

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
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
              child: ElevatedButton(
                onPressed: isValidNumber && isValidEmail ? () => log('Отправилось') : null,
                child: const Text('Отправить'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
