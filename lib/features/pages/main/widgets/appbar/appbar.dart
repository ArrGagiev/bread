import 'package:bread/core/widgets/badge/badge.dart';
import 'package:bread/features/pages/main/widgets/appbar/appbar_search_field.dart';
import 'package:bread/features/pages/main/widgets/appbar/appbar_icon_button.dart';

import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({super.key, required this.isAuthUser});
  final bool isAuthUser;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      elevation: 0,
      title: Container(
        margin: const EdgeInsets.only(left: 16),
        child: const AppBarSearchField(),
      ),
      actions: [
        const SizedBox(width: 10),
        AppBarIconButton(
          icon: 'assets/icons/filter_icon.svg',
          onPressed: () {},
        ),
        const SizedBox(width: 4),
        Visibility(
          visible: isAuthUser, //todo: auth user visibility <---
          child: Stack(
            alignment: Alignment.center,
            children: [
              AppBarIconButton(
                icon: 'assets/icons/bell_icon.svg',
                onPressed: () {},
              ),
              const Positioned(
                top: 15,
                right: 1,
                child: IconBadge(value: '1'), //todo: badge(9) <---
              )
            ],
          ),
        ),
        const SizedBox(width: 10),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
