import 'package:get/get.dart';
import 'package:movie_repository/movie_repository.dart';
import 'package:yts_mx_api/yts_mx_api.dart';

class MovieController extends GetxController {
  List<Movie> trendingMovieList = <Movie>[].obs;
  // Rx<MovieDetailExtend> movieDetailExtend = MovieDetailExtend().obs;

  Rxn<Map<String, dynamic>> movieDetailExtend = Rxn<Map<String, dynamic>>();
  final Rx<MovieDetail?> movieDetail = Rx<MovieDetail?>(null);
  // late final MovieDetail movieDetail;

  // RxMap<String, dynamic> movieDetailExtend = <String, dynamic>{}.obs;

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

  Future<void> getMovieDetail(int id) async {
    try {
      isLoading.value = true;
      final MovieDetailExtend res =
          await MovieRepository().getMovieDetail(id: id);
      movieDetailExtend.value = res.toJson();
      movieDetail.value =
          MovieDetail.fromJson(movieDetailExtend.value?["detail"]);

      // movieDetail = res.detail;
    } catch (e) {
      Get.log(e.toString());
      movieDetailExtend.value = {};
    } finally {
      isLoading.value = false;
    }
  }
}
