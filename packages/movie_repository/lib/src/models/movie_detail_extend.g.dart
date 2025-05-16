// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail_extend.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDetailExtend _$MovieDetailExtendFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'MovieDetailExtend',
      json,
      ($checkedConvert) {
        final val = MovieDetailExtend(
          detail: $checkedConvert(
              'detail', (v) => MovieDetail.fromJson(v as Map<String, dynamic>)),
          suggestions: $checkedConvert(
              'suggestions',
              (v) => (v as List<dynamic>)
                  .map((e) => Movie.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$MovieDetailExtendToJson(MovieDetailExtend instance) =>
    <String, dynamic>{
      'detail': instance.detail.toJson(),
      'suggestions': instance.suggestions.map((e) => e.toJson()).toList(),
    };
