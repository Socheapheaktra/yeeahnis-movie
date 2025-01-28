import 'package:yts_mx_api/yts_mx_api.dart';
import 'package:test/test.dart';

void main() {
  group('Movie', () {
    Map<String, dynamic> data = {
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
      "like_count": 3,
      "description_intro": "",
      "description_full": "",
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
          "seeds": 27,
          "peers": 5,
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
    group("fromJson", () {
      test('return correct MovieDetail object', () {
        expect(
          MovieDetail.fromJson(data),
          isA<MovieDetail>()
              .having((m) => m.id, 'id', data['id'])
              .having((m) => m.url, 'url', data['url'])
              .having((m) => m.imdbCode, 'imdbCode', data['imdb_code'])
              .having((m) => m.title, 'title', data['title'])
              .having(
                  (m) => m.titleEnglish, 'titleEnglish', data['title_english'])
              .having((m) => m.titleLong, 'titleLong', data['title_long'])
              .having((m) => m.slug, 'slug', data['slug'])
              .having((m) => m.year, 'year', data['year'])
              .having((m) => m.rating, 'rating', data['rating'])
              .having((m) => m.runtime, 'runtime', data['runtime'])
              .having((m) => m.genres, 'genres', isA<List<MovieGenres>>())
              .having((m) => m.likeCount, 'likeCount', data['like_count'])
              .having((m) => m.descriptionIntro, 'descriptionIntro',
                  data['description_intro'])
              .having((m) => m.descriptionFull, 'descriptionFull',
                  data['description_full'])
              .having((m) => m.youtubeTrailerCode, 'youtubeTrailerCode',
                  data['yt_trailer_code'])
              .having((m) => m.language, 'language', data['language'])
              .having((m) => m.mpaRating, 'mpaRating', data['mpa_rating'])
              .having((m) => m.backgroundImage, 'backgroundImage',
                  data['background_image'])
              .having((m) => m.backgroundImageOriginal,
                  'backgroundImageOriginal', data['background_image_original'])
              .having((m) => m.smallCoverImage, 'smallCoverImage',
                  data['small_cover_image'])
              .having((m) => m.mediumCoverImage, 'mediumCoverImage',
                  data['medium_cover_image'])
              .having((m) => m.largeCoverImage, 'largeCoverImage',
                  data['large_cover_image'])
              .having((m) => m.torrents, 'torrents', isA<List<Torrent>>())
              .having((m) => m.dateUploaded, 'dateUploaded',
                  DateTime.parse(data['date_uploaded']))
              .having((m) => m.dateUploadedUnix, 'dateUploadedUnix',
                  data['date_uploaded_unix']),
        );
      });
    });

    group('toJson', () {
      test('returns correct Map from MovieDetail instance', () {
        MovieDetail movieDetail = MovieDetail.fromJson(data);
        expect(
          movieDetail.toJson(),
          data,
        );
      });
    });
  });
}
