import 'package:dalel_egypt/core/utils/app_assets.dart';
import 'package:dalel_egypt/core/utils/app_colors.dart';
import 'package:dalel_egypt/features/cart/presentation/views/cart_view.dart';
import 'package:dalel_egypt/features/home/presentation/views/home_view.dart';
import 'package:dalel_egypt/features/profile/presentation/views/profile_view.dart';
import 'package:dalel_egypt/features/search/presentation/views/search_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class HomeNavBarWidget extends StatelessWidget {
  HomeNavBarWidget({super.key});
  final PersistentTabController _controller = PersistentTabController();
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      navBarStyle: NavBarStyle.style12,
      screens: _buildScreens(),
      controller: _controller,
      items: _navBarsItems(),
      confineToSafeArea: false,
      backgroundColor: AppColors.primaryColor,
      decoration: const NavBarDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
    );
  }
}

List<Widget> _buildScreens() {
  return [
    const HomeView(),
    const CartView(),
    const SearchView(),
    const ProfileView(),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      inactiveIcon: SvgPicture.asset(Assets.assetsImagesHome),
      icon: SvgPicture.asset(Assets.assetsImagesHomeActive),
    ),
    PersistentBottomNavBarItem(
      inactiveIcon: SvgPicture.asset(Assets.assetsImagesShoppingCart),
      icon: SvgPicture.asset(Assets.assetsImagesShoppingCartActive),
    ),
    PersistentBottomNavBarItem(
      inactiveIcon: SvgPicture.asset(Assets.assetsImagesSearch),
      icon: SvgPicture.asset(Assets.assetsImagesSearchActive),
    ),
    PersistentBottomNavBarItem(
      inactiveIcon: SvgPicture.asset(Assets.assetsImagesProfile),
      icon: SvgPicture.asset(Assets.assetsImagesProfileActive),
    ),
  ];
}
