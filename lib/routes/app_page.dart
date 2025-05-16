import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:yeeahnis_movie/bindings/splash_binding.dart';
import 'package:yeeahnis_movie/routes/app_route.dart';
import 'package:yeeahnis_movie/views/home/home_screen.dart';
import 'package:yeeahnis_movie/views/splash/splash_screen.dart';

class AppPages {
  static List<GetPage> routes = [
    GetPage(
      name: AppRoutes.home,
      page: () => HomeScreen(),
    ),
    GetPage(
        name: AppRoutes.splash,
        page: () => SplashScreen(),
        binding: SplashBinding()),
  ];
}
