import 'package:bread/features/pages/main/widgets/main_basic/interesting_cards.dart';
import 'package:bread/features/pages/main/widgets/main_basic/popular_cards.dart';
import 'package:bread/features/pages/main/widgets/main_basic/product_cards.dart';
import 'package:bread/features/pages/main/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MainAppBar(isAuthUser: true),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: InteretingCards()),
          SliverToBoxAdapter(child: SizedBox(height: 28)),
          SliverToBoxAdapter(child: ProductCards()),
          SliverToBoxAdapter(child: SizedBox(height: 28)),
          SliverToBoxAdapter(child: PopularCards()),
          SliverToBoxAdapter(child: SizedBox(height: 88)),
        ],
      ),
    );
  }
}
