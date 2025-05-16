import 'package:movie_repository/src/models/movie_detail_extend.dart';
import 'package:yts_mx_api/yts_mx_api.dart';

class MovieRepository {
  MovieRepository({YtsMxApiClient? movieApiClient})
      : _movieApiClient = movieApiClient ?? YtsMxApiClient();

  final YtsMxApiClient _movieApiClient;

  Future<List<Movie>> getNewMovieList() async {
    final List<Movie> newMovies = await _movieApiClient.getNewMovie();

    return newMovies;
  }

  Future<List<Movie>> getMovieByGenre({
    String genre = "All",
    int page = 1,
  }) async {
    final List<Movie> listMovies = await _movieApiClient.getMoviesByGenre(
      genre: genre,
      page: page,
    );

    return listMovies;
  }

  Future<MovieDetailExtend> getMovieDetail({required int id}) async {
    final detail = await _movieApiClient.getDetail(movieId: id);
    final suggestions = await _movieApiClient.getSuggestions(
      movieId: id,
    );

    final MovieDetailExtend data = MovieDetailExtend(
      detail: detail,
      suggestions: suggestions,
    );

    return data;
  }

  Future<List<Movie>> searchMovie({
    required String title,
    int page = 1,
  }) async {
    final searchResults = await _movieApiClient.searchMovie(
      query: title,
      page: page,
    );

    return searchResults;
  }

  Future<List<Movie>> searchByGenre({
    required String title,
    required String genre,
    int page = 1,
  }) async {
    final searchResuts = await _movieApiClient.searchByGenre(
      query: title,
      genre: genre,
      page: page,
    );

    return searchResuts;
  }
}
