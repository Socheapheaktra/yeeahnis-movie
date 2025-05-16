import 'package:json_annotation/json_annotation.dart';
import 'package:intl/intl.dart';

part 'torrent.g.dart';

@JsonSerializable()
class Torrent {
  final String url;
  final String hash;
  final String quality;
  final String? type;
  final String isRepack;
  final String videoCodec;
  final String bitDepth;
  final String audioChannels;
  final int seeds;
  final int peers;
  final String size;
  final double sizeBytes;
  @JsonKey(
    name: 'date_uploaded',
    fromJson: _loadDateTime,
    toJson: _dumpDateTime,
  )
  final DateTime dateUploaded;
  final double dateUploadedUnix;

  Torrent({
    required this.url,
    required this.hash,
    required this.isRepack,
    required this.videoCodec,
    required this.bitDepth,
    required this.audioChannels,
    required this.size,
    required this.quality,
    required this.type,
    required this.seeds,
    required this.peers,
    required this.sizeBytes,
    required this.dateUploadedUnix,
    required this.dateUploaded,
  });

  factory Torrent.fromJson(Map<String, dynamic> json) =>
      _$TorrentFromJson(json);

  Map<String, dynamic> toJson() => _$TorrentToJson(this);

  static DateTime _loadDateTime(String dateStr) {
    return DateTime.parse(dateStr);
  }

  static String _dumpDateTime(DateTime dateTime) {
    return DateFormat('yyyy-MM-dd HH:mm:ss').format(dateTime);
  }
}
