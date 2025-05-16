import 'package:json_annotation/json_annotation.dart';
import 'package:yts_mx_api/src/models/models.dart';
import 'package:intl/intl.dart';

part 'movie.g.dart';

@JsonEnum(fieldRename: FieldRename.none, alwaysCreate: true)
enum MovieGenres {
  @JsonValue('Action')
  action,
  @JsonValue('Adventure')
  adventure,
  @JsonValue('Animation')
  animation,
  @JsonValue('Biography')
  biography,
  @JsonValue('Comedy')
  comedy,
  @JsonValue('Crime')
  crime,
  @JsonValue('Documentary')
  documentary,
  @JsonValue('Drama')
  drama,
  @JsonValue('Family')
  family,
  @JsonValue('Fantasy')
  fantasy,
  @JsonValue('History')
  history,
  @JsonValue('Horror')
  horror,
  @JsonValue('Music')
  music,
  @JsonValue('Musical')
  musical,
  @JsonValue('Mystery')
  mystery,
  @JsonValue('Romance')
  romance,
  @JsonValue('Sci-Fi')
  sciFi,
  @JsonValue('Sport')
  sport,
  @JsonValue('Thriller')
  thriller,
  @JsonValue('War')
  war,
  @JsonValue('Western')
  western,
  @JsonValue(null)
  unknown,
}

@JsonSerializable()
class Movie {
  final int id;
  final String url;
  final String imdbCode;
  final String title;
  final String titleEnglish;
  final String titleLong;
  final String slug;
  final int year;
  final double rating;
  final double runtime;
  final List<MovieGenres> genres;
  final String summary;
  final String descriptionFull;
  final String synopsis;
  @JsonKey(name: 'yt_trailer_code')
  final String youtubeTrailerCode;
  final String language;
  final String mpaRating;
  final String backgroundImage;
  final String backgroundImageOriginal;
  final String smallCoverImage;
  final String mediumCoverImage;
  final String largeCoverImage;
  final String? state;
  final List<Torrent> torrents;
  final double dateUploadedUnix;
  @JsonKey(
    name: 'date_uploaded',
    fromJson: _loadDateTime,
    toJson: _dumpDateTime,
  )
  final DateTime dateUploaded;

  Movie({
    required this.id,
    required this.url,
    required this.imdbCode,
    required this.title,
    this.titleLong = "",
    this.titleEnglish = "",
    this.slug = "",
    this.year = 0,
    this.rating = 0,
    this.runtime = 0,
    required this.genres,
    this.summary = "",
    this.descriptionFull = "",
    this.synopsis = "",
    required this.youtubeTrailerCode,
    this.language = "",
    this.mpaRating = "",
    this.backgroundImage = "",
    this.backgroundImageOriginal = "",
    this.smallCoverImage = "",
    this.mediumCoverImage = "",
    this.largeCoverImage = "",
    this.state = "",
    required this.torrents,
    required this.dateUploaded,
    required this.dateUploadedUnix,
  });

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  Map<String, dynamic> toJson() => _$MovieToJson(this);

  static DateTime _loadDateTime(String dateStr) {
    return DateTime.parse(dateStr);
  }

  static String _dumpDateTime(DateTime dateTime) {
    return DateFormat('yyyy-MM-dd HH:mm:ss').format(dateTime);
  }
}
