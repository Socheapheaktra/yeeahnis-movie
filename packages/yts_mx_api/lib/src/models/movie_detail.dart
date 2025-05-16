import 'package:json_annotation/json_annotation.dart';
import 'package:yts_mx_api/src/models/models.dart';
import 'package:intl/intl.dart';

part 'movie_detail.g.dart';

@JsonSerializable()
class MovieDetail {
  final int id;
  final String url,
      imdbCode,
      title,
      titleEnglish,
      titleLong,
      slug,
      descriptionIntro,
      descriptionFull,
      language,
      mpaRating,
      backgroundImage,
      backgroundImageOriginal,
      smallCoverImage,
      mediumCoverImage,
      largeCoverImage;
  @JsonKey(name: 'yt_trailer_code')
  final String youtubeTrailerCode;
  final int year, likeCount;
  final double rating, runtime, dateUploadedUnix;
  final List<MovieGenres> genres;
  final List<Torrent> torrents;
  @JsonKey(
    name: 'date_uploaded',
    fromJson: _loadDateTime,
    toJson: _dumpDateTime,
  )
  final DateTime dateUploaded;

  MovieDetail({
    required this.id,
    required this.url,
    required this.imdbCode,
    required this.title,
    required this.titleEnglish,
    required this.titleLong,
    required this.slug,
    required this.year,
    required this.rating,
    required this.runtime,
    required this.genres,
    required this.likeCount,
    required this.descriptionIntro,
    required this.descriptionFull,
    required this.youtubeTrailerCode,
    required this.language,
    required this.mpaRating,
    required this.backgroundImage,
    required this.backgroundImageOriginal,
    required this.smallCoverImage,
    required this.mediumCoverImage,
    required this.largeCoverImage,
    required this.torrents,
    required this.dateUploaded,
    required this.dateUploadedUnix,
  });

  factory MovieDetail.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailFromJson(json);

  Map<String, dynamic> toJson() => _$MovieDetailToJson(this);

  static DateTime _loadDateTime(String dateStr) {
    return DateTime.parse(dateStr);
  }

  static String _dumpDateTime(DateTime dateTime) {
    return DateFormat('yyyy-MM-dd HH:mm:ss').format(dateTime);
  }
}
