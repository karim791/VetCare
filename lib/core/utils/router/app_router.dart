import 'package:flutter/material.dart';
import 'package:vetcare/core/utils/router/app_routes.dart';
import 'package:vetcare/features/home/views/pages/home_page.dart';
import 'package:vetcare/features/inbox/views/pages/inbox_page.dart';
import 'package:vetcare/features/login/views/pages/login_page.dart';
import 'package:vetcare/features/onboarding/onboarding_page.dart';
import 'package:vetcare/features/profile/views/pages/profile_page.dart';
import 'package:vetcare/features/shop/views/pages/shop_page.dart';
import 'package:vetcare/features/visits/views/pages/visits_page.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.onBoardingPage:
        return MaterialPageRoute(builder: (_) => OnBoardingPage());
      case AppRoutes.loginPage:
        return MaterialPageRoute(builder: (_) => LoginPage());
      case AppRoutes.homePage:
        return MaterialPageRoute(builder: (_) => HomePage());
      case AppRoutes.profilePage:
        return MaterialPageRoute(builder: (_) => ProfilePage());
      case AppRoutes.inboxPage:
        return MaterialPageRoute(builder: (_) => InboxPage());
      case AppRoutes.shopPage:
        return MaterialPageRoute(builder: (_) => ShopPage());
      case AppRoutes.visitsPage:
        return MaterialPageRoute(builder: (_) => VisitsPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}