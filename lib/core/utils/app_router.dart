import 'package:flutter/material.dart';

import '../../features/home/screens/home_screen.dart';
import '../../features/on_boarding/screens/on_boarding_page.dart';
import '../../features/state/screens/state_page.dart';

class AppRouter {
  static Map<String, WidgetBuilder> routes = {
    Routes.kOnBoardingPage: (context) => const OnBoardingPage(),
    Routes.kHomePage: (context) => const HomeScreen(),
    Routes.kStatePage: (context) => const StatePage()
  };
}

class Routes {
  static const String kOnBoardingPage = "on_boarding_page";
  static const String kHomePage = "home_page";
  static const String kStatePage = "state_page";
}
