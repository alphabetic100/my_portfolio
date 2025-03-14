
import 'package:get/get_navigation/get_navigation.dart';
import 'package:my_portfolio/src/app/features/landing/presentation/view/landing_page.dart';
import 'package:my_portfolio/src/app/features/splash_screen/presentation/view/splash_screen.dart';

class AppPages {

  static const String initialPage = "/splashScreen";
  static const String landingPage = "/landingPage";

static  List<GetPage> pages = [

    GetPage(name: initialPage, page: ()=> const SplashScreen()),
    GetPage(name: landingPage, page: ()=> const LandingPage())
  ];
}