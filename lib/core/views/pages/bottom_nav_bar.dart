import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:vetcare/core/utils/themes/app_colors.dart';
import 'package:vetcare/features/home/views/pages/home_page.dart';
import 'package:vetcare/features/inbox/views/pages/inbox_page.dart';
import 'package:vetcare/features/profile/views/pages/profile_page.dart';
import 'package:vetcare/features/shop/views/pages/shop_page.dart';
import 'package:vetcare/features/visits/views/pages/visits_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      tabs: [
        PersistentTabConfig(
          screen: HomePage(),
          item: ItemConfig(
            icon: Icon(Icons.home_rounded),
            title: "Home",
            activeForegroundColor: AppColors.deepGreen,
          ),
        ),
        PersistentTabConfig(
          screen: InboxPage(),
          item: ItemConfig(
            icon: Icon(Icons.message_rounded),
            title: "Inbox",
            activeForegroundColor: AppColors.deepGreen,
          ),
        ),
        PersistentTabConfig(
          screen: ShopPage(),
          item: ItemConfig(
            icon: Icon(Icons.shopping_cart_rounded),
            title: "Shop",
            activeForegroundColor: AppColors.deepGreen,
          ),
        ),
        PersistentTabConfig(
          screen: VisitsPage(),
          item: ItemConfig(
            icon: Icon(Icons.calendar_month_rounded),
            title: "Visits",
            activeForegroundColor: AppColors.deepGreen,
          ),
        ),
        PersistentTabConfig(
          screen: ProfilePage(),
          item: ItemConfig(
            icon: Icon(Icons.person_rounded),
            title: "Profile",
            activeForegroundColor: AppColors.deepGreen,
          ),
        ),
      ],
      navBarBuilder: (navBarConfig) =>
          Style5BottomNavBar(navBarConfig: navBarConfig),
    );
  }
}
