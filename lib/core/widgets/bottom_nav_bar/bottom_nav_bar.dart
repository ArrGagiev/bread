import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:bread/core/themes/extentions/bottom_navbar_theme.dart';
import 'package:bread/features/favourite/favourite_page.dart';
import 'package:bread/features/profile/profile_page.dart';
import 'package:bread/features/catalog/catalog_page.dart';
import 'package:bread/core/constants/app_typography.dart';
import 'package:bread/features/basket/basket_page.dart';
import 'package:bread/features/main/main_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      navBarHeight: 60,
      onTabChanged: (tab) => setState(() => currentTab = tab),
      tabs: _buildTabs(context),
      navBarBuilder: (navBarConfig) => Style1BottomNavBar(
        navBarConfig: navBarConfig,
        navBarDecoration: NavBarDecoration(
          color: context.bottomNavBarTheme.backgroundColor,
          boxShadow: [
            BoxShadow(
              color: context.bottomNavBarTheme.shadowColor,
              blurRadius: 7,
              offset: const Offset(0, -3),
            )
          ],
        ),
      ),
    );
  }

  List<PersistentTabConfig> _buildTabs(BuildContext context) {
    return [
      _buildTab(
        context: context,
        iconPath: 'assets/icons/bottom/main_icon.svg',
        screen: const MainPage(),
        title: "Галавная",
        index: 0,
      ),
      _buildTab(
        context: context,
        iconPath: 'assets/icons/bottom/catalog_icon.svg',
        screen: const CatalogPage(),
        title: "Каталог",
        index: 1,
      ),
      _buildTab(
        context: context,
        iconPath: 'assets/icons/bottom/favourite_icon.svg',
        screen: const FavouritePage(),
        title: "Любимые",
        index: 2,
      ),
      _buildTab(
        context: context,
        iconPath: 'assets/icons/bottom/basket_icon.svg',
        screen: const BasketPage(),
        title: "Корзина",
        index: 3,
      ),
      _buildTab(
        context: context,
        iconPath: 'assets/icons/bottom/profile_icon.svg',
        screen: const ProfilePage(),
        title: "Профиль",
        index: 4,
      ),
    ];
  }

  PersistentTabConfig _buildTab({
    required BuildContext context,
    required String iconPath,
    required Widget screen,
    required String title,
    required int index,
  }) {
    return PersistentTabConfig(
      screen: screen,
      item: ItemConfig(
        icon: SvgPicture.asset(
          iconPath,
          width: 20,
          colorFilter: ColorFilter.mode(
            currentTab == index
                ? context.bottomNavBarTheme.activeIconColor
                : context.bottomNavBarTheme.inactiveIconColor,
            BlendMode.srcIn,
          ),
        ),
        activeForegroundColor: context.bottomNavBarTheme.activeIconColor,
        inactiveForegroundColor: context.bottomNavBarTheme.inactiveIconColor,
        title: title,
        textStyle: AppTypography.bodySmall,
      ),
    );
  }
}
