import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:bread/features/pages/favourite/favourite_page.dart';
import 'package:bread/features/pages/profile/profile_page.dart';
import 'package:bread/features/pages/catalog/catalog_page.dart';
import 'package:bread/features/pages/basket/basket_page.dart';
import 'package:bread/core/constants/app_typography.dart';
import 'package:bread/features/pages/main/main_page.dart';
import 'package:bread/core/themes/theme_extension.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

//todo: имеет -> drawer, navBarBuilder, controller, onTabChanged
//todo: и еще кучу всего!
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      navBarHeight: 60,
      onTabChanged: (tab) => setState(() => currentIndex = tab),
      tabs: [
        PersistentTabConfig(
          screen: const MainPage(),
          item: ItemConfig(
            icon: SvgPicture.asset(
              'assets/icons/bottom/main_icon.svg',
              width: 20,
              colorFilter: ColorFilter.mode(
                currentIndex == 0
                    ? context.themeColors.activeIconColor
                    : context.themeColors.inactiveIconColor,
                BlendMode.srcIn,
              ),
            ),
            activeForegroundColor: context.themeColors.activeIconColor,
            inactiveForegroundColor: context.themeColors.inactiveIconColor,
            title: "Галавная",
            textStyle: AppTypography.bodySmall,
          ),
        ),
        PersistentTabConfig(
          screen: const CatalogPage(),
          item: ItemConfig(
            icon: SvgPicture.asset(
              'assets/icons/bottom/catalog_icon.svg',
              width: 20,
              colorFilter: ColorFilter.mode(
                currentIndex == 1
                    ? context.themeColors.activeIconColor
                    : context.themeColors.inactiveIconColor,
                BlendMode.srcIn,
              ),
            ),
            activeForegroundColor: context.themeColors.activeIconColor,
            inactiveForegroundColor: context.themeColors.inactiveIconColor,
            title: "Каталог",
            textStyle: AppTypography.bodySmall,
          ),
        ),
        PersistentTabConfig(
          screen: const FavouritePage(),
          item: ItemConfig(
            icon: SvgPicture.asset(
              'assets/icons/bottom/favourite_icon.svg',
              width: 20,
              colorFilter: ColorFilter.mode(
                currentIndex == 2
                    ? context.themeColors.activeIconColor
                    : context.themeColors.inactiveIconColor,
                BlendMode.srcIn,
              ),
            ),
            activeForegroundColor: context.themeColors.activeIconColor,
            inactiveForegroundColor: context.themeColors.inactiveIconColor,
            title: "Любимые",
            textStyle: AppTypography.bodySmall,
          ),
        ),
        PersistentTabConfig(
          screen: const BasketPage(),
          item: ItemConfig(
            icon: SvgPicture.asset(
              'assets/icons/bottom/basket_icon.svg',
              width: 20,
              colorFilter: ColorFilter.mode(
                currentIndex == 3
                    ? context.themeColors.activeIconColor
                    : context.themeColors.inactiveIconColor,
                BlendMode.srcIn,
              ),
            ),
            activeForegroundColor: context.themeColors.activeIconColor,
            inactiveForegroundColor: context.themeColors.inactiveIconColor,
            title: "Корзина",
            textStyle: AppTypography.bodySmall,
          ),
        ),
        PersistentTabConfig(
          screen: const ProfilePage(),
          item: ItemConfig(
            icon: SvgPicture.asset(
              'assets/icons/bottom/profile_icon.svg',
              width: 20,
              colorFilter: ColorFilter.mode(
                currentIndex == 4
                    ? context.themeColors.activeIconColor
                    : context.themeColors.inactiveIconColor,
                BlendMode.srcIn,
              ),
            ),
            activeForegroundColor: context.themeColors.activeIconColor,
            inactiveForegroundColor: context.themeColors.inactiveIconColor,
            title: "Профиль",
            textStyle: AppTypography.bodySmall,
          ),
        ),
      ],
      navBarBuilder: (navBarConfig) => Style1BottomNavBar(
        navBarConfig: navBarConfig,
        navBarDecoration: NavBarDecoration(
          //todo: настройки цвета bottom_nav_bar
          //AppColors.darkThemeBottom
          color: Theme.of(context).bottomAppBarTheme.color!,
          //todo: настройки цвета тени bottom_nav_bar
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).bottomAppBarTheme.shadowColor!,
              blurRadius: 7,
              offset: const Offset(0, -3),
            )
          ],
        ),
      ),
    );
  }
}
