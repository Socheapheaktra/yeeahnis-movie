import 'dart:convert';

import 'package:test/test.dart';
import 'package:http/http.dart' as http;
import 'package:yts_mx_api/yts_mx_api.dart';
import 'package:mocktail/mocktail.dart';

class MockHttpClient extends Mock implements http.Client {}

class MockResponse extends Mock implements http.Response {}

class FakeUri extends Mock implements Uri {}

void main() {
  group('YTS MX Api Client', () {
    const Map<String, dynamic> demoMovie = {
      "status": "ok",
      "status_message": "Query was successful",
      "data": {
        "movie_count": 64751,
        "limit": 1,
        "page_number": 1,
        "movies": [
          {
            "id": 65902,
            "url": "https://yts.mx/movies/diddy-monsters-fall-2025",
            "imdb_code": "tt34887637",
            "title": "Diddy: Monster's Fall",
            "title_english": "Diddy: Monster's Fall",
            "title_long": "Diddy: Monster's Fall (2025)",
            "slug": "diddy-monsters-fall-2025",
            "year": 2025,
            "rating": 0,
            "runtime": 60,
            "genres": ["Biography", "Crime", "Documentary", "Music"],
            "summary": "",
            "description_full": "",
            "synopsis": "",
            "yt_trailer_code": "ChJ2FkILwn8",
            "language": "en",
            "mpa_rating": "",
            "background_image":
                "https://yts.mx/assets/images/movies/diddy_monsters_fall_2025/background.jpg",
            "background_image_original":
                "https://yts.mx/assets/images/movies/diddy_monsters_fall_2025/background.jpg",
            "small_cover_image":
                "https://yts.mx/assets/images/movies/diddy_monsters_fall_2025/small-cover.jpg",
            "medium_cover_image":
                "https://yts.mx/assets/images/movies/diddy_monsters_fall_2025/medium-cover.jpg",
            "large_cover_image":
                "https://yts.mx/assets/images/movies/diddy_monsters_fall_2025/large-cover.jpg",
            "state": "ok",
            "torrents": [
              {
                "url":
                    "https://yts.mx/torrent/download/AC2ED93BCDDF2405C587830F021D4981DB137CB3",
                "hash": "AC2ED93BCDDF2405C587830F021D4981DB137CB3",
                "quality": "720p",
                "type": "web",
                "is_repack": "0",
                "video_codec": "x264",
                "bit_depth": "8",
                "audio_channels": "2.0",
                "seeds": 0,
                "peers": 0,
                "size": "552 MB",
                "size_bytes": 578813952,
                "date_uploaded": "2025-01-09 01:46:25",
                "date_uploaded_unix": 1736383585
              },
              {
                "url":
                    "https://yts.mx/torrent/download/C511A840E4F624947E0245D49BEC7E715EC706C1",
                "hash": "C511A840E4F624947E0245D49BEC7E715EC706C1",
                "quality": "1080p",
                "type": "web",
                "is_repack": "0",
                "video_codec": "x264",
                "bit_depth": "8",
                "audio_channels": "2.0",
                "seeds": 0,
                "peers": 0,
                "size": "1023.62 MB",
                "size_bytes": 1073343365,
                "date_uploaded": "2025-01-09 02:39:17",
                "date_uploaded_unix": 1736386757
              }
            ],
            "date_uploaded": "2025-01-09 01:46:25",
            "date_uploaded_unix": 1736383585
          }
        ]
      },
      "@meta": {
        "server_time": 1736388442,
        "server_timezone": "CET",
        "api_version": 2,
        "execution_time": "0.23 ms"
      }
    };
    const Map<String, dynamic> demoDetail = {
      "status": "ok",
      "status_message": "Query was successful",
      "data": {
        "movie": {
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
          "like_count": 4,
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
              "seeds": 38,
              "peers": 10,
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
        }
      },
      "@meta": {
        "server_time": 1736388471,
        "server_timezone": "CET",
        "api_version": 2,
        "execution_time": "0 ms"
      }
    };
    const Map<String, dynamic> demoSuggestion = {
      "status": "ok",
      "status_message": "Query was successful",
      "data": {
        "movie_count": 0,
        "movies": [
          {
            "id": 6507,
            "url": "https://yts.mx/movies/logan-2017",
            "imdb_code": "tt3315342",
            "title": "Logan",
            "title_english": "Logan",
            "title_long": "Logan (2017)",
            "slug": "logan-2017",
            "year": 2017,
            "rating": 8.1,
            "runtime": 137,
            "genres": ["Action", "Drama", "Sci-Fi", "Thriller"],
            "summary":
                "In 2029 the mutant population has shrunk significantly due to genetically modified plants designed to reduce mutant powers and the X-Men have disbanded. Logan, whose power to self-heal is dwindling, has surrendered himself to alcohol and now earns a living as a chauffeur. He takes care of the ailing old Professor X whom he keeps hidden away. One day, a female stranger asks Logan to drive a girl named Laura to the Canadian border. At first he refuses, but the Professor has been waiting for a long time for her to appear. Laura possesses an extraordinary fighting prowess and is in many ways like Wolverine. She is pursued by sinister figures working for a powerful corporation; this is because they made her, with Logan's DNA. A decrepit Logan is forced to ask himself if he can or even wants to put his remaining powers to good use. It would appear that in the near-future, the times in which they were able put the world to rights with razor sharp claws and telepathic powers are now over.",
            "description_full":
                "In 2029 the mutant population has shrunk significantly due to genetically modified plants designed to reduce mutant powers and the X-Men have disbanded. Logan, whose power to self-heal is dwindling, has surrendered himself to alcohol and now earns a living as a chauffeur. He takes care of the ailing old Professor X whom he keeps hidden away. One day, a female stranger asks Logan to drive a girl named Laura to the Canadian border. At first he refuses, but the Professor has been waiting for a long time for her to appear. Laura possesses an extraordinary fighting prowess and is in many ways like Wolverine. She is pursued by sinister figures working for a powerful corporation; this is because they made her, with Logan's DNA. A decrepit Logan is forced to ask himself if he can or even wants to put his remaining powers to good use. It would appear that in the near-future, the times in which they were able put the world to rights with razor sharp claws and telepathic powers are now over.",
            "synopsis":
                "In 2029 the mutant population has shrunk significantly due to genetically modified plants designed to reduce mutant powers and the X-Men have disbanded. Logan, whose power to self-heal is dwindling, has surrendered himself to alcohol and now earns a living as a chauffeur. He takes care of the ailing old Professor X whom he keeps hidden away. One day, a female stranger asks Logan to drive a girl named Laura to the Canadian border. At first he refuses, but the Professor has been waiting for a long time for her to appear. Laura possesses an extraordinary fighting prowess and is in many ways like Wolverine. She is pursued by sinister figures working for a powerful corporation; this is because they made her, with Logan's DNA. A decrepit Logan is forced to ask himself if he can or even wants to put his remaining powers to good use. It would appear that in the near-future, the times in which they were able put the world to rights with razor sharp claws and telepathic powers are now over.",
            "yt_trailer_code": "XaE_9pfybL4",
            "language": "en",
            "mpa_rating": "",
            "background_image":
                "https://yts.mx/assets/images/movies/logan_2017/background.jpg",
            "background_image_original":
                "https://yts.mx/assets/images/movies/logan_2017/background.jpg",
            "small_cover_image":
                "https://yts.mx/assets/images/movies/logan_2017/small-cover.jpg",
            "medium_cover_image":
                "https://yts.mx/assets/images/movies/logan_2017/medium-cover.jpg",
            "state": "ok",
            "torrents": [
              {
                "url":
                    "https://yts.mx/torrent/download/A52324E4506C66CB30067BE13EE366C225BC4D70",
                "hash": "A52324E4506C66CB30067BE13EE366C225BC4D70",
                "quality": "720p",
                "is_repack": "0",
                "video_codec": "x264",
                "bit_depth": "8",
                "audio_channels": "2.0",
                "seeds": 64,
                "peers": 10,
                "size": "1014.33 MB",
                "size_bytes": 1063602094,
                "date_uploaded": "2017-05-22 04:27:42",
                "date_uploaded_unix": 1495420062
              },
              {
                "url":
                    "https://yts.mx/torrent/download/1AB2CE4D62A9A46E91A3A3097BCEBD6248978D40",
                "hash": "1AB2CE4D62A9A46E91A3A3097BCEBD6248978D40",
                "quality": "1080p",
                "is_repack": "0",
                "video_codec": "x264",
                "bit_depth": "8",
                "audio_channels": "2.0",
                "seeds": 100,
                "peers": 12,
                "size": "2.09 GB",
                "size_bytes": 2244120412,
                "date_uploaded": "2017-05-22 06:55:05",
                "date_uploaded_unix": 1495428905
              },
              {
                "url":
                    "https://yts.mx/torrent/download/472F1A1837A64496BC3E5E99798C5A2477333D8B",
                "hash": "472F1A1837A64496BC3E5E99798C5A2477333D8B",
                "quality": "2160p",
                "is_repack": "0",
                "video_codec": "x265",
                "bit_depth": "10",
                "audio_channels": "5.1",
                "seeds": 87,
                "peers": 19,
                "size": "6.15 GB",
                "size_bytes": 6603512218,
                "date_uploaded": "2022-04-20 09:35:05",
                "date_uploaded_unix": 1650440105
              }
            ],
            "date_uploaded": "2017-05-22 04:27:42",
            "date_uploaded_unix": 1495420062
          },
          {
            "id": 7548,
            "url": "https://yts.mx/movies/den-of-thieves-2018",
            "imdb_code": "tt1259528",
            "title": "Den of Thieves",
            "title_english": "Den of Thieves",
            "title_long": "Den of Thieves (2018)",
            "slug": "den-of-thieves-2018",
            "year": 2018,
            "rating": 7,
            "runtime": 140,
            "genres": ["Action", "Crime", "Drama", "Mystery", "Thriller"],
            "summary":
                "A gritty L.A crime saga which follows the intersecting and often personally connected lives of an elite unit of the LA County Sheriff's Dept. and the state's most successful bank robbery crew as the outlaws plan an impossible heist on the Federal Reserve Bank of downtown Los Angeles.—STXfilms",
            "description_full":
                "A gritty L.A crime saga which follows the intersecting and often personally connected lives of an elite unit of the LA County Sheriff's Dept. and the state's most successful bank robbery crew as the outlaws plan an impossible heist on the Federal Reserve Bank of downtown Los Angeles.—STXfilms",
            "synopsis":
                "A gritty L.A crime saga which follows the intersecting and often personally connected lives of an elite unit of the LA County Sheriff's Dept. and the state's most successful bank robbery crew as the outlaws plan an impossible heist on the Federal Reserve Bank of downtown Los Angeles.—STXfilms",
            "yt_trailer_code": "CZkUlNwiEBY",
            "language": "en",
            "mpa_rating": "",
            "background_image":
                "https://yts.mx/assets/images/movies/den_of_thieves_2018/background.jpg",
            "background_image_original":
                "https://yts.mx/assets/images/movies/den_of_thieves_2018/background.jpg",
            "small_cover_image":
                "https://yts.mx/assets/images/movies/den_of_thieves_2018/small-cover.jpg",
            "medium_cover_image":
                "https://yts.mx/assets/images/movies/den_of_thieves_2018/medium-cover.jpg",
            "state": "ok",
            "torrents": [
              {
                "url":
                    "https://yts.mx/torrent/download/E81F00B414292537D26D3621D3E68B8E5CA7E591",
                "hash": "E81F00B414292537D26D3621D3E68B8E5CA7E591",
                "quality": "720p",
                "is_repack": "0",
                "video_codec": "x264",
                "bit_depth": "8",
                "audio_channels": "2.0",
                "seeds": 100,
                "peers": 92,
                "size": "1.24 GB",
                "size_bytes": 1331439862,
                "date_uploaded": "2018-04-16 21:28:11",
                "date_uploaded_unix": 1523906891
              },
              {
                "url":
                    "https://yts.mx/torrent/download/85C2F245E754E84BD19B04B241490BD6FDB62252",
                "hash": "85C2F245E754E84BD19B04B241490BD6FDB62252",
                "quality": "1080p",
                "is_repack": "0",
                "video_codec": "x264",
                "bit_depth": "8",
                "audio_channels": "2.0",
                "seeds": 100,
                "peers": 100,
                "size": "2.38 GB",
                "size_bytes": 2555505541,
                "date_uploaded": "2018-04-16 23:51:36",
                "date_uploaded_unix": 1523915496
              },
              {
                "url":
                    "https://yts.mx/torrent/download/567BBA2F05838D94F4C760D403E99AE069451A53",
                "hash": "567BBA2F05838D94F4C760D403E99AE069451A53",
                "quality": "720p",
                "is_repack": "0",
                "video_codec": "x264",
                "bit_depth": "8",
                "audio_channels": "2.0",
                "seeds": 96,
                "peers": 47,
                "size": "1.16 GB",
                "size_bytes": 1245540516,
                "date_uploaded": "2018-04-10 21:18:27",
                "date_uploaded_unix": 1523387907
              },
              {
                "url":
                    "https://yts.mx/torrent/download/ECF300670D7F17A5823E2EADE14483088F6C5B17",
                "hash": "ECF300670D7F17A5823E2EADE14483088F6C5B17",
                "quality": "1080p",
                "is_repack": "0",
                "video_codec": "x264",
                "bit_depth": "8",
                "audio_channels": "2.0",
                "seeds": 100,
                "peers": 100,
                "size": "2.23 GB",
                "size_bytes": 2394444268,
                "date_uploaded": "2018-04-10 23:59:35",
                "date_uploaded_unix": 1523397575
              }
            ],
            "date_uploaded": "2018-04-10 21:18:27",
            "date_uploaded_unix": 1523387907
          },
          {
            "id": 13106,
            "url": "https://yts.mx/movies/avengers-endgame-2019",
            "imdb_code": "tt4154796",
            "title": "Avengers: Endgame",
            "title_english": "Avengers: Endgame",
            "title_long": "Avengers: Endgame (2019)",
            "slug": "avengers-endgame-2019",
            "year": 2019,
            "rating": 8.4,
            "runtime": 181,
            "genres": ["Action", "Adventure", "Drama", "Sci-Fi"],
            "summary":
                "After the devastating events of Avengers: Infinity War (2018), the universe is in ruins due to the efforts of the Mad Titan, Thanos. With the help of remaining allies, the Avengers must assemble once more in order to undo Thanos's actions and undo the chaos to the universe, no matter what consequences may be in store, and no matter who they face...",
            "description_full":
                "After the devastating events of Avengers: Infinity War (2018), the universe is in ruins due to the efforts of the Mad Titan, Thanos. With the help of remaining allies, the Avengers must assemble once more in order to undo Thanos's actions and undo the chaos to the universe, no matter what consequences may be in store, and no matter who they face...",
            "synopsis":
                "After the devastating events of Avengers: Infinity War (2018), the universe is in ruins due to the efforts of the Mad Titan, Thanos. With the help of remaining allies, the Avengers must assemble once more in order to undo Thanos's actions and undo the chaos to the universe, no matter what consequences may be in store, and no matter who they face...",
            "yt_trailer_code": "AMSITikqKiM",
            "language": "en",
            "mpa_rating": "",
            "background_image":
                "https://yts.mx/assets/images/movies/avengers_endgame_2019/background.jpg",
            "background_image_original":
                "https://yts.mx/assets/images/movies/avengers_endgame_2019/background.jpg",
            "small_cover_image":
                "https://yts.mx/assets/images/movies/avengers_endgame_2019/small-cover.jpg",
            "medium_cover_image":
                "https://yts.mx/assets/images/movies/avengers_endgame_2019/medium-cover.jpg",
            "state": "ok",
            "torrents": [
              {
                "url":
                    "https://yts.mx/torrent/download/134F7AF967DBDB585A934A24C9F2A2EEE72E2A93",
                "hash": "134F7AF967DBDB585A934A24C9F2A2EEE72E2A93",
                "quality": "3D",
                "is_repack": "0",
                "video_codec": "x264",
                "bit_depth": "8",
                "audio_channels": "2.0",
                "seeds": 18,
                "peers": 2,
                "size": "2.84 GB",
                "size_bytes": 3049426780,
                "date_uploaded": "2019-08-28 14:51:56",
                "date_uploaded_unix": 1566996716
              },
              {
                "url":
                    "https://yts.mx/torrent/download/5A4140BD59D66BCAC57CF05AF4A8FAB4EBCAE1C1",
                "hash": "5A4140BD59D66BCAC57CF05AF4A8FAB4EBCAE1C1",
                "quality": "720p",
                "is_repack": "0",
                "video_codec": "x264",
                "bit_depth": "8",
                "audio_channels": "2.0",
                "seeds": 100,
                "peers": 51,
                "size": "1.43 GB",
                "size_bytes": 1535450808,
                "date_uploaded": "2019-08-01 14:19:21",
                "date_uploaded_unix": 1564661961
              },
              {
                "url":
                    "https://yts.mx/torrent/download/223F7484D326AD8EFD3CF1E548DED524833CB77E",
                "hash": "223F7484D326AD8EFD3CF1E548DED524833CB77E",
                "quality": "1080p",
                "is_repack": "0",
                "video_codec": "x264",
                "bit_depth": "8",
                "audio_channels": "2.0",
                "seeds": 100,
                "peers": 100,
                "size": "3.01 GB",
                "size_bytes": 3231962890,
                "date_uploaded": "2019-08-01 17:07:29",
                "date_uploaded_unix": 1564672049
              },
              {
                "url":
                    "https://yts.mx/torrent/download/709FBD48374D2AE13C11B07A26B5E7DDC727D720",
                "hash": "709FBD48374D2AE13C11B07A26B5E7DDC727D720",
                "quality": "2160p",
                "is_repack": "0",
                "video_codec": "x265",
                "bit_depth": "10",
                "audio_channels": "5.1",
                "seeds": 100,
                "peers": 52,
                "size": "5.26 GB",
                "size_bytes": 5647881994,
                "date_uploaded": "2020-02-09 02:11:11",
                "date_uploaded_unix": 1581210671
              },
              {
                "url":
                    "https://yts.mx/torrent/download/9D62160EEE330397A7A7BABA989A269C58CCFD8E",
                "hash": "9D62160EEE330397A7A7BABA989A269C58CCFD8E",
                "quality": "720p",
                "is_repack": "0",
                "video_codec": "x264",
                "bit_depth": "8",
                "audio_channels": "2.0",
                "seeds": 48,
                "peers": 7,
                "size": "1.43 GB",
                "size_bytes": 1535450808,
                "date_uploaded": "2019-07-29 18:45:19",
                "date_uploaded_unix": 1564418719
              },
              {
                "url":
                    "https://yts.mx/torrent/download/414A6F933C48FC7543A9CDB42C854B5457C5BCC7",
                "hash": "414A6F933C48FC7543A9CDB42C854B5457C5BCC7",
                "quality": "1080p",
                "is_repack": "0",
                "video_codec": "x264",
                "bit_depth": "8",
                "audio_channels": "2.0",
                "seeds": 100,
                "peers": 48,
                "size": "3 GB",
                "size_bytes": 3221225472,
                "date_uploaded": "2019-07-29 21:31:21",
                "date_uploaded_unix": 1564428681
              }
            ],
            "date_uploaded": "2019-07-29 18:45:19",
            "date_uploaded_unix": 1564418719
          },
          {
            "id": 14660,
            "url": "https://yts.mx/movies/joker-2019",
            "imdb_code": "tt7286456",
            "title": "Joker",
            "title_english": "Joker",
            "title_long": "Joker (2019)",
            "slug": "joker-2019",
            "year": 2019,
            "rating": 8.3,
            "runtime": 122,
            "genres": ["Action", "Crime", "Drama", "Thriller"],
            "summary":
                "A socially inept clown for hire - Arthur Fleck aspires to be a stand up comedian among his small job working dressed as a clown holding a sign for advertising. He takes care of his mother, Penny Fleck, and as he learns more about his mental illness, he learns more about his past. Dealing with all the negativity and bullying from society, he heads downwards on a spiral, in turn showing how his alter ego, \"Joker,\" came to be.—crisspaggos",
            "description_full":
                "A socially inept clown for hire - Arthur Fleck aspires to be a stand up comedian among his small job working dressed as a clown holding a sign for advertising. He takes care of his mother, Penny Fleck, and as he learns more about his mental illness, he learns more about his past. Dealing with all the negativity and bullying from society, he heads downwards on a spiral, in turn showing how his alter ego, \"Joker,\" came to be.—crisspaggos",
            "synopsis":
                "A socially inept clown for hire - Arthur Fleck aspires to be a stand up comedian among his small job working dressed as a clown holding a sign for advertising. He takes care of his mother, Penny Fleck, and as he learns more about his mental illness, he learns more about his past. Dealing with all the negativity and bullying from society, he heads downwards on a spiral, in turn showing how his alter ego, \"Joker,\" came to be.—crisspaggos",
            "yt_trailer_code": "-RFFRxcoKfA",
            "language": "en",
            "mpa_rating": "",
            "background_image":
                "https://yts.mx/assets/images/movies/joker_2019/background.jpg",
            "background_image_original":
                "https://yts.mx/assets/images/movies/joker_2019/background.jpg",
            "small_cover_image":
                "https://yts.mx/assets/images/movies/joker_2019/small-cover.jpg",
            "medium_cover_image":
                "https://yts.mx/assets/images/movies/joker_2019/medium-cover.jpg",
            "state": "ok",
            "torrents": [
              {
                "url":
                    "https://yts.mx/torrent/download/BA693A610B43A3AA246D3382299775EBDF0FEC34",
                "hash": "BA693A610B43A3AA246D3382299775EBDF0FEC34",
                "quality": "720p",
                "is_repack": "0",
                "video_codec": "x264",
                "bit_depth": "8",
                "audio_channels": "2.0",
                "seeds": 82,
                "peers": 8,
                "size": "1.07 GB",
                "size_bytes": 1148903752,
                "date_uploaded": "2019-12-18 21:43:28",
                "date_uploaded_unix": 1576701808
              },
              {
                "url":
                    "https://yts.mx/torrent/download/BFEA2333B7A7959270B1FD296D7D9632D1AF5713",
                "hash": "BFEA2333B7A7959270B1FD296D7D9632D1AF5713",
                "quality": "1080p",
                "is_repack": "0",
                "video_codec": "x264",
                "bit_depth": "8",
                "audio_channels": "2.0",
                "seeds": 100,
                "peers": 40,
                "size": "1.92 GB",
                "size_bytes": 2061584302,
                "date_uploaded": "2019-12-18 23:56:48",
                "date_uploaded_unix": 1576709808
              },
              {
                "url":
                    "https://yts.mx/torrent/download/42E92DEAA863D1B6083BB159C14FA827EA8EF9B6",
                "hash": "42E92DEAA863D1B6083BB159C14FA827EA8EF9B6",
                "quality": "2160p",
                "is_repack": "0",
                "video_codec": "x265",
                "bit_depth": "8",
                "audio_channels": "5.1",
                "seeds": 100,
                "peers": 22,
                "size": "5.99 GB",
                "size_bytes": 6431713526,
                "date_uploaded": "2020-01-26 06:34:24",
                "date_uploaded_unix": 1580016864
              },
              {
                "url":
                    "https://yts.mx/torrent/download/33435E0D8EE7311F5AC93531A402F7A002E4A750",
                "hash": "33435E0D8EE7311F5AC93531A402F7A002E4A750",
                "quality": "720p",
                "is_repack": "0",
                "video_codec": "x264",
                "bit_depth": "8",
                "audio_channels": "2.0",
                "seeds": 17,
                "peers": 0,
                "size": "1.06 GB",
                "size_bytes": 1138166333,
                "date_uploaded": "2019-12-17 05:14:41",
                "date_uploaded_unix": 1576556081
              },
              {
                "url":
                    "https://yts.mx/torrent/download/2B415A885A3E2210A6EF1D6C57EBA325F20D8BC6",
                "hash": "2B415A885A3E2210A6EF1D6C57EBA325F20D8BC6",
                "quality": "1080p",
                "is_repack": "0",
                "video_codec": "x264",
                "bit_depth": "8",
                "audio_channels": "2.0",
                "seeds": 100,
                "peers": 25,
                "size": "1.91 GB",
                "size_bytes": 2050846884,
                "date_uploaded": "2019-12-17 07:56:06",
                "date_uploaded_unix": 1576565766
              }
            ],
            "date_uploaded": "2019-12-17 05:14:41",
            "date_uploaded_unix": 1576556081
          }
        ]
      },
      "@meta": {
        "server_time": 1737792583,
        "server_timezone": "CET",
        "api_version": 2,
        "execution_time": "0 ms"
      }
    };

    group('YtsMxApiClient', () {
      late http.Client httpClient;
      late YtsMxApiClient apiClient;

      setUpAll(() {
        registerFallbackValue(FakeUri());
      });

      setUp(() {
        httpClient = MockHttpClient();
        apiClient = YtsMxApiClient(httpClient: httpClient);
      });

      group('Constructor', () {
        test('can be constructed without httpClient', () {
          expect(YtsMxApiClient(), isNotNull);
        });
      });

      group('listMovies', () {
        test('make correct httpRequest', () async {
          final response = MockResponse();

          when(() => response.statusCode).thenReturn(200);
          when(() => response.body).thenReturn('{}');
          when(() => httpClient.get(any())).thenAnswer((_) async => response);

          try {
            await apiClient.getMovies();
          } catch (_) {}

          verify(
            () => httpClient.get(
              Uri.https(
                'yts.mx',
                '/api/v2/list_movies.json',
              ),
            ),
          ).called(1);
        });

        test('throws MovieRequestFailure non-200 statusCode', () async {
          final response = MockResponse();

          when(() => response.statusCode).thenReturn(400);
          when(() => response.body).thenReturn('{}');
          when(() => httpClient.get(any())).thenAnswer((_) async => response);

          expect(
            () async => apiClient.getMovies(),
            throwsA(isA<MovieRequestFailure>()),
          );
        });

        test('throws MovieRequestFailue on empty response', () async {
          final response = MockResponse();

          when(() => response.statusCode).thenReturn(200);
          when(() => response.body).thenReturn('');
          when(() => httpClient.get(any())).thenAnswer((_) async => response);

          expectLater(
            () async => apiClient.getMovies(),
            throwsA(isA<MovieRequestFailure>()),
          );
        });

        test('returns correct Object on success call', () async {
          final response = MockResponse();

          when(() => response.statusCode).thenReturn(200);
          when(() => response.body).thenReturn(jsonEncode(demoMovie));
          when(() => httpClient.get(any())).thenAnswer((_) async => response);

          final actual = await apiClient.getMovies();

          expect(
            actual,
            isA<List<Movie>>(),
          );
        });
      });

      group('searchMovie', () {
        const String queryTerm = 'MovieTitle';
        const int page = 2;

        test('make correct httpRequest', () async {
          final response = MockResponse();

          when(() => response.statusCode).thenReturn(200);
          when(() => response.body).thenReturn('{}');
          when(() => httpClient.get(any())).thenAnswer((_) async => response);

          try {
            await apiClient.searchMovie(query: queryTerm, page: page);
          } catch (_) {}

          verify(
            () => httpClient.get(
              Uri.https(
                'yts.mx',
                '/api/v2/list_movies.json',
                {'query_term': queryTerm, 'page': '$page'},
              ),
            ),
          ).called(1);
        });

        test('throws MovieRequestFailure non-200 statusCode', () async {
          final response = MockResponse();

          when(() => response.statusCode).thenReturn(400);
          when(() => response.body).thenReturn('{}');
          when(() => httpClient.get(any())).thenAnswer((_) async => response);

          expect(
            () async => await apiClient.searchMovie(
              query: queryTerm,
              page: page,
            ),
            throwsA(isA<MovieRequestFailure>()),
          );
        });

        test('throws MovieRequestFailue on empty response', () async {
          final response = MockResponse();

          when(() => response.statusCode).thenReturn(200);
          when(() => response.body).thenReturn('');
          when(() => httpClient.get(any())).thenAnswer((_) async => response);

          expectLater(
            () async => apiClient.searchMovie(query: queryTerm, page: page),
            throwsA(isA<MovieRequestFailure>()),
          );
        });

        test('returns correct Object on success call', () async {
          final response = MockResponse();

          when(() => response.statusCode).thenReturn(200);
          when(() => response.body).thenReturn(jsonEncode(demoMovie));
          when(() => httpClient.get(any())).thenAnswer((_) async => response);

          final actual = await apiClient.searchMovie(
            query: queryTerm,
            page: page,
          );

          expect(actual, isA<List<Movie>>());
        });
      });

      group('getDetail', () {
        const int movieId = 65881;

        test('make correct httpRequest', () async {
          final response = MockResponse();

          when(() => response.statusCode).thenReturn(200);
          when(() => response.body).thenReturn('{}');
          when(() => httpClient.get(any())).thenAnswer((_) async => response);

          try {
            await apiClient.getDetail(movieId: movieId);
          } catch (_) {}

          verify(
            () => httpClient.get(Uri.https(
              'yts.mx',
              '/api/v1/movie_details.json',
              {'movie_id': '$movieId'},
            )),
          ).called(1);
        });

        test('throws MovieRequestFailure on non-200 code', () async {
          final response = MockResponse();

          when(() => response.statusCode).thenReturn(400);
          when(() => response.body).thenReturn('{}');
          when(() => httpClient.get(any())).thenAnswer((_) async => response);

          expect(
            () async => await apiClient.getDetail(movieId: movieId),
            throwsA(isA<MovieRequestFailure>()),
          );
        });

        test('throws MovieRequestFailure on empty response', () async {
          final response = MockResponse();

          when(() => response.statusCode).thenReturn(200);
          when(() => response.body).thenReturn('');
          when(() => httpClient.get(any())).thenAnswer((_) async => response);

          expect(
            () async => await apiClient.getDetail(movieId: movieId),
            throwsA(isA<MovieRequestFailure>()),
          );
        });

        test('return MovieDetail Object on success call', () async {
          final response = MockResponse();

          when(() => response.statusCode).thenReturn(200);
          when(() => response.body).thenReturn(jsonEncode(demoDetail));
          when(() => httpClient.get(any())).thenAnswer((_) async => response);

          final actual = await apiClient.getDetail(movieId: movieId);

          expect(actual, isA<MovieDetail>());
        });
      });

      group('getSuggestions', () {
        const int movieId = 65881;

        test('make correct httpRequest', () async {
          final response = MockResponse();

          when(() => response.statusCode).thenReturn(200);
          when(() => response.body).thenReturn('{}');
          when(() => httpClient.get(any())).thenAnswer((_) async => response);

          try {
            await apiClient.getSuggestions(movieId: movieId);
          } catch (_) {}

          verify(
            () => httpClient.get(
              Uri.https(
                'yts.mx',
                '/api/v1/movie_suggestions.json',
                {'movie_id': '$movieId'},
              ),
            ),
          ).called(1);
        });

        test('throws MovieRequestFailure on non-200 code', () async {
          final response = MockResponse();

          when(() => response.statusCode).thenReturn(400);
          when(() => response.body).thenReturn('{}');
          when(() => httpClient.get(any())).thenAnswer((_) async => response);

          expect(
            () async => apiClient.getSuggestions(movieId: movieId),
            throwsA(isA<MovieRequestFailure>()),
          );
        });

        test('throws MovieRequestFailure on empty response', () async {
          final response = MockResponse();

          when(() => response.statusCode).thenReturn(200);
          when(() => response.body).thenReturn('');
          when(() => httpClient.get(any())).thenAnswer((_) async => response);

          expect(
            () async => apiClient.getSuggestions(movieId: movieId),
            throwsA(isA<MovieRequestFailure>()),
          );
        });

        test('return List<Movie> Object on success call', () async {
          final response = MockResponse();

          when(() => response.statusCode).thenReturn(200);
          when(() => response.body).thenReturn(jsonEncode(demoSuggestion));
          when(() => httpClient.get(any())).thenAnswer((_) async => response);

          final actual = await apiClient.getSuggestions(movieId: movieId);

          expect(actual, isA<List<Movie>>());
        });
      });
    });
  });
}
