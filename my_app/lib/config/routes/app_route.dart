import 'package:get/get.dart';
import 'package:my_app/features/nav_bar/presention/widget/main_widget.dart';
import 'package:my_app/features/onboard/presention/pages/onboard_page.dart';
import 'package:my_app/features/regitser/presention/pages/register_page.dart';

class AppRoutes {
  static const String onBoard = '/';
  static const String register = '/register';
  static const String mainPage = '/MainPage';
  static const String dashBoard = '/dashborad';
  static final List<GetPage> routes = [
    GetPage(
      name: onBoard,
      page: () => const OnboardPage(),
    ),
    GetPage(
      name: register,
      page: () => const RegisterPage(),
    ),
    GetPage(
      name: mainPage,
      page: () => const MainPage(),
    ),
    GetPage(
      name: dashBoard,
      page: () => const MainPage(),
    ),
  ];
}
