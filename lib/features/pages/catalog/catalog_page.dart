import 'package:bread/core/widgets/buttons/dotted_button.dart';
import 'package:bread/core/widgets/buttons/primary_button.dart';
import 'package:bread/core/widgets/buttons/soft_button.dart';
import 'package:flutter/material.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(pinned: true),
        const SliverToBoxAdapter(child: Text('CatalogPage')),
        SliverToBoxAdapter(
          child: PrimaryButton(
            title: 'OrangeButton',
            icon: const Icon(Icons.add),
            margin: const EdgeInsets.all(20),
            onPressed: () {},
          ),
        ),
        SliverToBoxAdapter(
          child: SoftButton(
            title: 'SoftButton',
            icon: const Icon(Icons.add),
            margin: const EdgeInsets.all(20),
            onPressed: () {},
          ),
        ),
        SliverToBoxAdapter(
          child: DottedButton(
            title: 'DottedButton',
            icon: const Icon(Icons.add),
            margin: const EdgeInsets.all(20),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
