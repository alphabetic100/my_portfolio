import 'package:get/get_navigation/get_navigation.dart';
import 'package:my_portfolio/src/app/feature/home/presentation/view/home_page.dart';
import 'package:my_portfolio/src/app/feature/splash_screen/presentation/view/splash_screen.dart';

class AppPages {
  static const String initialPage = "/splashScreen";
  static const String landingPage = "/landingPage";

  static List<GetPage> pages = [
    GetPage(name: initialPage, page: () => SplashScreen()),
    GetPage(name: landingPage, page: () =>  HomePage())
  ];
}
