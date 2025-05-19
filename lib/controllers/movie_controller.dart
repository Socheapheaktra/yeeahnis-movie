import 'package:get/get.dart';
import 'package:movie_repository/movie_repository.dart';
import 'package:yts_mx_api/yts_mx_api.dart';

class MovieController extends GetxController {
  List<Movie> trendingMovieList = <Movie>[].obs;
  // RxList<> trendingMovieList = [].obs;

  var isLoading = false.obs;
  @override
  void onInit() {
    super.onInit();
    getTrendingMovie();
  }

  Future<void> getTrendingMovie() async {
    isLoading.value = true;
    List<Movie> res = await MovieRepository().getNewMovieList();

    // trendingMovieList.value =
    //     (res as List).map((movie) => Movie.fromJson(movie)).toList();

    trendingMovieList = res;
    isLoading.value = false;
    // Get.log(res.toString());
  }
}
