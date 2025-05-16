import 'package:equatable/equatable.dart';
import 'package:yts_mx_api/yts_mx_api.dart';

enum MovieStatus { initial, loading, success, fail }

extension MovieStatusX on MovieStatus {
  bool get isInitial => this == MovieStatus.initial;
  bool get isLoading => this == MovieStatus.loading;
  bool get isSuccess => this == MovieStatus.success;
  bool get isFail => this == MovieStatus.fail;
}

final class MovieState extends Equatable {
  final MovieStatus status;
  final List<Movie> newMovies;

  const MovieState({
    this.status = MovieStatus.initial,
    List<Movie>? newMovie,
  }) : newMovies = newMovie ?? const [];

  @override
  List<Object> get props => [
        status,
        newMovies,
      ];
}
