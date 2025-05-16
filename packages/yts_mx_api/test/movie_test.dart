import 'package:test/test.dart';
import 'package:yts_mx_api/yts_mx_api.dart';

void main() {
  group('Movie', () {
    const Map<String, dynamic> movieJson = {
      "id": 65881,
      "url": "https://yts.mx/movies/aga-2021",
      "imdb_code": "tt27192758",
      "title": "Aga",
      "title_english": "Aga",
      "title_long": "Aga (2021)",
      "slug": "aga-2021",
      "year": 2021,
      "rating": 6.6,
      "runtime": 99,
      "genres": ["Drama"],
      "summary": "",
      "description_full": "",
      "synopsis": "",
      "yt_trailer_code": "YWZlRopfyNA",
      "language": "tr",
      "mpa_rating": "",
      "background_image":
          "https://yts.mx/assets/images/movies/aga_2021/background.jpg",
      "background_image_original":
          "https://yts.mx/assets/images/movies/aga_2021/background.jpg",
      "small_cover_image":
          "https://yts.mx/assets/images/movies/aga_2021/small-cover.jpg",
      "medium_cover_image":
          "https://yts.mx/assets/images/movies/aga_2021/medium-cover.jpg",
      "large_cover_image":
          "https://yts.mx/assets/images/movies/aga_2021/large-cover.jpg",
      "state": "ok",
      "torrents": [
        {
          "url":
              "https://yts.mx/torrent/download/18B0085DFF9C21309818B79EF42585201C92364B",
          "hash": "18B0085DFF9C21309818B79EF42585201C92364B",
          "quality": "720p",
          "type": "web",
          "is_repack": "0",
          "video_codec": "x264",
          "bit_depth": "8",
          "audio_channels": "2.0",
          "seeds": 0,
          "peers": 0,
          "size": "912.37 MB",
          "size_bytes": 956689285,
          "date_uploaded": "2025-01-08 05:01:04",
          "date_uploaded_unix": 1736308864
        },
        {
          "url":
              "https://yts.mx/torrent/download/927C99DEA7DADEC4E01CFD3B962D813C340561A4",
          "hash": "927C99DEA7DADEC4E01CFD3B962D813C340561A4",
          "quality": "1080p",
          "type": "web",
          "is_repack": "0",
          "video_codec": "x264",
          "bit_depth": "8",
          "audio_channels": "5.1",
          "seeds": 0,
          "peers": 0,
          "size": "1.83 GB",
          "size_bytes": 1964947538,
          "date_uploaded": "2025-01-08 06:13:42",
          "date_uploaded_unix": 1736313222
        }
      ],
      "date_uploaded": "2025-01-08 05:01:04",
      "date_uploaded_unix": 1736308864
    };

    group('fromJson', () {
      test('returns correct Movie object from json data', () {
        expect(
          Movie.fromJson(movieJson),
          isA<Movie>()
              .having((m) => m.id, "id", movieJson['id'])
              .having((m) => m.url, "url", movieJson['url'])
              .having((m) => m.imdbCode, "imdbCode", movieJson['imdb_code'])
              .having((m) => m.title, "title", movieJson['title'])
              .having((m) => m.titleEnglish, "titleEnglish",
                  movieJson['title_english'])
              .having((m) => m.titleLong, "titleLong", movieJson['title_long'])
              .having((m) => m.slug, "slug", movieJson['slug'])
              .having((m) => m.year, "year", movieJson['year'])
              .having((m) => m.rating, "rating", movieJson['rating'])
              .having((m) => m.runtime, "runtime", movieJson['runtime'])
              .having((m) => m.genres, "genres", isA<List<MovieGenres>>())
              .having((m) => m.summary, "summary", movieJson['summary'])
              .having((m) => m.descriptionFull, "descriptionFull",
                  movieJson['description_full'])
              .having((m) => m.synopsis, "sypnosis", movieJson['synopsis'])
              .having((m) => m.youtubeTrailerCode, "youtubeTrailerCode",
                  movieJson['yt_trailer_code'])
              .having((m) => m.language, "language", movieJson['language'])
              .having((m) => m.mpaRating, "mpaRating", movieJson['mpa_rating'])
              .having((m) => m.backgroundImage, "backgroundImage",
                  movieJson['background_image'])
              .having(
                  (m) => m.backgroundImageOriginal,
                  "backgroundImageOriginal",
                  movieJson['background_image_original'])
              .having((m) => m.smallCoverImage, "smallCoverImage",
                  movieJson['small_cover_image'])
              .having((m) => m.mediumCoverImage, "mediumCoverImage",
                  movieJson['medium_cover_image'])
              .having((m) => m.largeCoverImage, "largeCoverImage",
                  movieJson['large_cover_image'])
              .having((m) => m.state, "state", movieJson['state'])
              .having((m) => m.torrents, "torrents", isA<List<Torrent>>())
              .having((m) => m.dateUploadedUnix, "dateUploadedUnix",
                  movieJson['date_uploaded_unix']),
        );
      });
    });

    group('toJson', () {
      test('returns correct json data from Movie Object', () {
        final Movie movie = Movie.fromJson(movieJson);
        expect(
          movie.toJson(),
          movieJson,
        );
      });
    });
  });
}
