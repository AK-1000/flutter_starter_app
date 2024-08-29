import 'package:get/get.dart';
import 'package:starter_app/presentation/pages/auth/sign_up_page.dart';
import 'package:starter_app/presentation/pages/home_page/home_page.dart';
import 'package:starter_app/presentation/pages/splash_screen/splash_screen.dart';

class Routes {
  static String initial = "/";
  static String signUp = "/sign_up";
  static String home = '/home';
}

final getPages = [
  GetPage(
    name: Routes.initial,
    page: () => const SplashScreen(),
  ),
  GetPage(
    name: Routes.signUp,
    page: () => SignUpPage(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: Routes.home,
    page: () => const HomePage(),
    transition: Transition.rightToLeft,
  ),
];
