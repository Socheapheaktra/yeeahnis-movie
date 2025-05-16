import 'package:test/test.dart';
import 'package:yts_mx_api/yts_mx_api.dart';

void main() {
  group('Torrent', () {
    Map<String, dynamic> torrentJson = {
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
    };
    group('fromJson', () {
      test('returns correct Torrent Object from json', () {
        expect(
          Torrent.fromJson(torrentJson),
          isA<Torrent>()
              .having((t) => t.url, 'url', torrentJson['url'])
              .having((t) => t.hash, 'hash', torrentJson['hash'])
              .having((t) => t.quality, 'quality', torrentJson['quality'])
              .having((t) => t.type, 'type', torrentJson['type'])
              .having((t) => t.isRepack, 'isRepack', torrentJson['is_repack'])
              .having(
                  (t) => t.videoCodec, 'videoCodec', torrentJson['video_codec'])
              .having((t) => t.bitDepth, 'bitDepth', torrentJson['bit_depth'])
              .having((t) => t.audioChannels, 'audioChannels',
                  torrentJson['audio_channels'])
              .having((t) => t.seeds, 'seeds', torrentJson['seeds'])
              .having((t) => t.peers, 'peers', torrentJson['peers'])
              .having((t) => t.size, 'size', torrentJson['size'])
              .having(
                  (t) => t.sizeBytes, 'sizeBytes', torrentJson['size_bytes'])
              .having((t) => t.dateUploaded, 'dateUploaded',
                  DateTime.parse(torrentJson['date_uploaded']))
              .having((t) => t.dateUploadedUnix, 'dateUploadedUnix',
                  torrentJson['date_uploaded_unix']),
        );
      });
    });

    group('toJson', () {
      test('returns correct JsonDate from Torrent Object', () {
        Torrent torrent = Torrent.fromJson(torrentJson);
        expect(
          torrent.toJson(),
          torrentJson,
        );
      });
    });
  });
}
