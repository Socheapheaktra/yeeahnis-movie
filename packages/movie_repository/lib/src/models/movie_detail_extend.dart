import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:yts_mx_api/yts_mx_api.dart';

part 'movie_detail_extend.g.dart';

@JsonSerializable()
class MovieDetailExtend extends Equatable {
  final MovieDetail detail;
  final List<Movie> suggestions;

  const MovieDetailExtend({
    required this.detail,
    required this.suggestions,
  });

  factory MovieDetailExtend.fromJson(Map<String, dynamic> json) {
    return _$MovieDetailExtendFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MovieDetailExtendToJson(this);

  @override
  List<Object> get props => [detail, suggestions];
}
