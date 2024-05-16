import 'package:bread/core/widgets/cards/product_card/product_card.dart';
import 'package:bread/core/widgets/buttons/primary_button.dart';
import 'package:bread/core/widgets/buttons/dotted_button.dart';
import 'package:bread/core/widgets/buttons/soft_button.dart';
import 'package:bread/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          //!--------------------------------------------------
          SliverAppBar(
            pinned: true,
            title: Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                color: AppColors.lightGray,
              ),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.zero,
                ),
              ),
            ),
            actions: [
              Center(
                child: InkWell(
                  customBorder: const CircleBorder(),
                  onTap: () {},
                  child: Container(
                    constraints: const BoxConstraints.tightFor(width: 40, height: 40),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    padding: const EdgeInsets.all(10),
                    child: SvgPicture.asset(
                      'assets/icons/product_card_basket.svg',
                      colorFilter: ColorFilter.mode(
                        Theme.of(context).appBarTheme.iconTheme!.color!, //! iconTheme.color <---
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
          //!--------------------------------------------------
          SliverToBoxAdapter(
            child: Center(
              child: Text(
                'CatalogPage',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
          ),
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
          //!--------------------------------------------------
          const SliverToBoxAdapter(
            child: ProductCard(),
          ),
          //!--------------------------------------------------
          // const SliverToBoxAdapter(child: SizedBox(height: 20)),
          // SliverToBoxAdapter(
          //   child: Material(
          //     elevation: 8,
          //     color: Theme.of(context).focusColor,
          //     shadowColor: Colors.transparent,
          //     borderRadius: BorderRadius.circular(20),
          //     child: const SizedBox(width: 100, height: 100),
          //   ),
          // ),
        ],
      ),
    );
  }
}
