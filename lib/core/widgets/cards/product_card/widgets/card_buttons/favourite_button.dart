import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FavouriteButton extends StatefulWidget {
  const FavouriteButton({super.key});

  @override
  State<FavouriteButton> createState() => _FavouriteButtonState();
}

class _FavouriteButtonState extends State<FavouriteButton> {
  bool isFavourite = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: const CircleBorder(),
      onTap: () {
        setState(() {
          isFavourite = !isFavourite; //todo: change icon <---
        });
      },
      child: SizedBox(
        width: 24,
        child: SvgPicture.asset(
          isFavourite ? 'assets/icons/favourite.svg' : 'assets/icons/favourite_outline.svg',
        ),
      ),
    );
  }
}
