import 'package:bread/core/widgets/text_form/asd.dart';
import 'package:bread/core/widgets/text_form/text_form_field.dart';
import 'package:flutter/material.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 100)),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: AppTextField(
                labelText: 'Поиск',
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: AppTextField(
                labelText: 'Поиск',
              ),
            ),
          ),
          SliverToBoxAdapter(child: MyHomePage()),
        ],
      ),
    );
  }
}
