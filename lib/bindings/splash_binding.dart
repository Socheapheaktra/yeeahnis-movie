import 'package:get/get.dart';
import '../controllers/service_controller.dart';
import '../controllers/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
    Get.lazyPut<ServiceController>(() => ServiceController());
  }
}
