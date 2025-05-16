// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDetail _$MovieDetailFromJson(Map<String, dynamic> json) => $checkedCreate(
      'MovieDetail',
      json,
      ($checkedConvert) {
        final val = MovieDetail(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          url: $checkedConvert('url', (v) => v as String),
          imdbCode: $checkedConvert('imdb_code', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          titleEnglish: $checkedConvert('title_english', (v) => v as String),
          titleLong: $checkedConvert('title_long', (v) => v as String),
          slug: $checkedConvert('slug', (v) => v as String),
          year: $checkedConvert('year', (v) => (v as num).toInt()),
          rating: $checkedConvert('rating', (v) => (v as num).toDouble()),
          runtime: $checkedConvert('runtime', (v) => (v as num).toDouble()),
          genres: $checkedConvert(
              'genres',
              (v) => (v as List<dynamic>)
                  .map((e) => $enumDecode(_$MovieGenresEnumMap, e))
                  .toList()),
          likeCount: $checkedConvert('like_count', (v) => (v as num).toInt()),
          descriptionIntro:
              $checkedConvert('description_intro', (v) => v as String),
          descriptionFull:
              $checkedConvert('description_full', (v) => v as String),
          youtubeTrailerCode:
              $checkedConvert('yt_trailer_code', (v) => v as String),
          language: $checkedConvert('language', (v) => v as String),
          mpaRating: $checkedConvert('mpa_rating', (v) => v as String),
          backgroundImage:
              $checkedConvert('background_image', (v) => v as String),
          backgroundImageOriginal:
              $checkedConvert('background_image_original', (v) => v as String),
          smallCoverImage:
              $checkedConvert('small_cover_image', (v) => v as String),
          mediumCoverImage:
              $checkedConvert('medium_cover_image', (v) => v as String),
          largeCoverImage:
              $checkedConvert('large_cover_image', (v) => v as String),
          torrents: $checkedConvert(
              'torrents',
              (v) => (v as List<dynamic>)
                  .map((e) => Torrent.fromJson(e as Map<String, dynamic>))
                  .toList()),
          dateUploaded: $checkedConvert(
              'date_uploaded', (v) => MovieDetail._loadDateTime(v as String)),
          dateUploadedUnix: $checkedConvert(
              'date_uploaded_unix', (v) => (v as num).toDouble()),
        );
        return val;
      },
      fieldKeyMap: const {
        'imdbCode': 'imdb_code',
        'titleEnglish': 'title_english',
        'titleLong': 'title_long',
        'likeCount': 'like_count',
        'descriptionIntro': 'description_intro',
        'descriptionFull': 'description_full',
        'youtubeTrailerCode': 'yt_trailer_code',
        'mpaRating': 'mpa_rating',
        'backgroundImage': 'background_image',
        'backgroundImageOriginal': 'background_image_original',
        'smallCoverImage': 'small_cover_image',
        'mediumCoverImage': 'medium_cover_image',
        'largeCoverImage': 'large_cover_image',
        'dateUploaded': 'date_uploaded',
        'dateUploadedUnix': 'date_uploaded_unix'
      },
    );

Map<String, dynamic> _$MovieDetailToJson(MovieDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'imdb_code': instance.imdbCode,
      'title': instance.title,
      'title_english': instance.titleEnglish,
      'title_long': instance.titleLong,
      'slug': instance.slug,
      'description_intro': instance.descriptionIntro,
      'description_full': instance.descriptionFull,
      'language': instance.language,
      'mpa_rating': instance.mpaRating,
      'background_image': instance.backgroundImage,
      'background_image_original': instance.backgroundImageOriginal,
      'small_cover_image': instance.smallCoverImage,
      'medium_cover_image': instance.mediumCoverImage,
      'large_cover_image': instance.largeCoverImage,
      'yt_trailer_code': instance.youtubeTrailerCode,
      'year': instance.year,
      'like_count': instance.likeCount,
      'rating': instance.rating,
      'runtime': instance.runtime,
      'date_uploaded_unix': instance.dateUploadedUnix,
      'genres': instance.genres.map((e) => _$MovieGenresEnumMap[e]).toList(),
      'torrents': instance.torrents.map((e) => e.toJson()).toList(),
      'date_uploaded': MovieDetail._dumpDateTime(instance.dateUploaded),
    };

const _$MovieGenresEnumMap = {
  MovieGenres.action: 'Action',
  MovieGenres.adventure: 'Adventure',
  MovieGenres.animation: 'Animation',
  MovieGenres.biography: 'Biography',
  MovieGenres.comedy: 'Comedy',
  MovieGenres.crime: 'Crime',
  MovieGenres.documentary: 'Documentary',
  MovieGenres.drama: 'Drama',
  MovieGenres.family: 'Family',
  MovieGenres.fantasy: 'Fantasy',
  MovieGenres.history: 'History',
  MovieGenres.horror: 'Horror',
  MovieGenres.music: 'Music',
  MovieGenres.musical: 'Musical',
  MovieGenres.mystery: 'Mystery',
  MovieGenres.romance: 'Romance',
  MovieGenres.sciFi: 'Sci-Fi',
  MovieGenres.sport: 'Sport',
  MovieGenres.thriller: 'Thriller',
  MovieGenres.war: 'War',
  MovieGenres.western: 'Western',
  MovieGenres.unknown: null,
};
