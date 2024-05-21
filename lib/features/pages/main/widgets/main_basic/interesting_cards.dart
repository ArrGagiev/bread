import 'package:bread/core/widgets/cards/info_navigation_card/info_navigation_card.dart';
import 'package:flutter/material.dart';

class InteretingCards extends StatelessWidget {
  const InteretingCards({super.key});

  final double horizontalPadding = 16;
  final String title = 'Интересное';
  final double height = 100;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: horizontalPadding),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: height,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return InfoNavigationCard(
                image: 'assets/images/stocks.png',
                title: 'Акции ${++index} ',
                onTap: () {},
              );
            },
            separatorBuilder: (context, index) => const SizedBox(width: 12),
          ),
        ),
      ],
    );
  }
}
