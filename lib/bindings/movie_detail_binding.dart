import 'package:get/get.dart';
import 'package:yeeahnis_movie/controllers/movie_controller.dart';

class MovieDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MovieController>(() => MovieController());
  }
}
