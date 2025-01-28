import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:yts_mx_api/yts_mx_api.dart';

class MovieRequestFailure implements Exception {}

class MovieRequestNotFoundFailure implements Exception {}

/// {@template YtsMxApiClient}
/// Dart API Client which wraps the [YTS.MX API] (https://yts.mx/api)
/// {@endtemplate}
class YtsMxApiClient {
  YtsMxApiClient({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  static const _baseUrl = 'yts.mx';

  final http.Client _httpClient;

  /// Get [Movie] `/api/v2/list_movies.json`
  Future<List<Movie>> getMovies() async {
    final movieRequest = Uri.https(
      _baseUrl,
      '/api/v2/list_movies.json',
    );

    final movieResponse = await _httpClient.get(movieRequest);

    if (movieResponse.statusCode != 200) throw MovieRequestFailure();

    if (movieResponse.body.isEmpty) throw MovieRequestFailure();

    final result = jsonDecode(movieResponse.body) as Map<String, dynamic>;

    return (result['data']['movies'] as List).map((item) {
      return Movie.fromJson(item);
    }).toList();
  }

  /// Search [Movie] `/api/v2/list_movies.json?query_term=(query)`
  Future<List<Movie>> searchMovie({required String query, int page = 1}) async {
    final movieRequest = Uri.https(
      _baseUrl,
      '/api/v2/list_movies.json',
      {'query_term': query, 'page': '$page'},
    );

    final movieResponse = await _httpClient.get(movieRequest);

    if (movieResponse.statusCode != 200) throw MovieRequestFailure();

    if (movieResponse.body.isEmpty) throw MovieRequestFailure();

    final result = jsonDecode(movieResponse.body) as Map<String, dynamic>;

    return (result['data']['movies'] as List).map((item) {
      return Movie.fromJson(item);
    }).toList();
  }

  /// Get Detail [MovieDetail] `/api/v1/movie_details.json?movie_id=(movieId)`
  Future<MovieDetail> getDetail({required int movieId}) async {
    final movieRequest = Uri.https(
      _baseUrl,
      '/api/v1/movie_details.json',
      {'movie_id': '$movieId'},
    );

    final movieResponse = await _httpClient.get(movieRequest);

    if (movieResponse.statusCode != 200) throw MovieRequestFailure();

    if (movieResponse.body.isEmpty) throw MovieRequestFailure();

    final result = jsonDecode(movieResponse.body) as Map<String, dynamic>;

    return MovieDetail.fromJson(result['data']['movie']);
  }

  /// Get Suggestion [Movie] `/api/v1/movie_suggestions.json?movie_id=(movieId)`
  Future<List<Movie>> getSuggestions({required int movieId}) async {
    final movieRequest = Uri.https(
      _baseUrl,
      '/api/v1/movie_suggestions.json',
      {'movie_id': '$movieId'},
    );

    final movieResponse = await _httpClient.get(movieRequest);

    if (movieResponse.statusCode != 200) throw MovieRequestFailure();

    if (movieResponse.body.isEmpty) throw MovieRequestFailure();

    final result = jsonDecode(movieResponse.body) as Map<String, dynamic>;

    return (result['data']['movies'] as List).map((item) {
      return Movie.fromJson(item);
    }).toList();
  }
}
