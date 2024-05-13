import 'package:bread/features/pages/basket/basket_page.dart';
import 'package:bread/features/pages/favourite/favourite_page.dart';
import 'package:bread/features/pages/profile/profile_page.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:bread/features/pages/catalog/catalog_page.dart';
import 'package:bread/features/pages/main/main_page.dart';
import 'package:bread/core/constants/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

//todo: имеет -> drawer, navBarBuilder, controller, onTabChanged
//todo: и еще кучу всего!
class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      navBarHeight: 65,
      tabs: [
        PersistentTabConfig(
          screen: const MainPage(),
          item: ItemConfig(
            icon: SvgPicture.asset('assets/icons/bottom/main_orange.svg', width: 20),
            // inactiveIcon: SvgPicture.asset('assets/icons/bottom/main_brown.svg', width: 20),
            activeForegroundColor: AppColors.orange,
            inactiveForegroundColor: AppColors.brown,
            title: "Галавная",
            textStyle: const TextStyle(fontFamily: 'Roboto'),
          ),
        ),
        PersistentTabConfig(
          screen: const CatalogPage(),
          item: ItemConfig(
            icon: SvgPicture.asset('assets/icons/bottom/catalog_orange.svg', width: 20),
            inactiveIcon: SvgPicture.asset('assets/icons/bottom/catalog_brown.svg', width: 20),
            activeForegroundColor: AppColors.orange,
            inactiveForegroundColor: AppColors.brown,
            title: "Каталог",
            textStyle: const TextStyle(fontFamily: 'Roboto'),
          ),
        ),
        PersistentTabConfig(
          screen: const FavouritePage(),
          item: ItemConfig(
            icon: SvgPicture.asset('assets/icons/bottom/favourite_orange.svg', width: 20),
            inactiveIcon: SvgPicture.asset('assets/icons/bottom/favourite_brown.svg', width: 20),
            activeForegroundColor: AppColors.orange,
            inactiveForegroundColor: AppColors.brown,
            title: "Любимые",
            textStyle: const TextStyle(fontFamily: 'Roboto'),
          ),
        ),
        PersistentTabConfig(
          screen: const BasketPage(),
          item: ItemConfig(
            icon: SvgPicture.asset('assets/icons/bottom/basket_orange.svg', width: 20),
            inactiveIcon: SvgPicture.asset('assets/icons/bottom/basket_brown.svg', width: 20),
            activeForegroundColor: AppColors.orange,
            inactiveForegroundColor: AppColors.brown,
            title: "Корзина",
            textStyle: const TextStyle(fontFamily: 'Roboto'),
          ),
        ),
        PersistentTabConfig(
          screen: const ProfilePage(),
          item: ItemConfig(
            icon: SvgPicture.asset('assets/icons/bottom/profile_orange.svg', width: 20),
            inactiveIcon: SvgPicture.asset('assets/icons/bottom/profile_brown.svg', width: 20),
            activeForegroundColor: AppColors.orange,
            inactiveForegroundColor: AppColors.brown,
            title: "Профиль",
            textStyle: const TextStyle(fontFamily: 'Roboto'),
          ),
        ),
      ],
      navBarBuilder: (navBarConfig) => Style1BottomNavBar(
        navBarConfig: navBarConfig,
        navBarDecoration: NavBarDecoration(
          //todo: настройки цвета bottom_nav_bar
          //AppColors.darkThemeBottom
          color: AppColors.white,
          //todo: настройки цвета тени bottom_nav_bar
          boxShadow: [
            BoxShadow(
              //AppColors.darkThemeBottomShadow.withOpacity(0.1)
              color: AppColors.gray.withOpacity(0.1),
              blurRadius: 7,
              offset: const Offset(0, -3),
            )
          ],
        ),
      ),
    );
  }
}
