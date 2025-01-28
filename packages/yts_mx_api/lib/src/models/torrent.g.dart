// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'torrent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Torrent _$TorrentFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Torrent',
      json,
      ($checkedConvert) {
        final val = Torrent(
          url: $checkedConvert('url', (v) => v as String),
          hash: $checkedConvert('hash', (v) => v as String),
          isRepack: $checkedConvert('is_repack', (v) => v as String),
          videoCodec: $checkedConvert('video_codec', (v) => v as String),
          bitDepth: $checkedConvert('bit_depth', (v) => v as String),
          audioChannels: $checkedConvert('audio_channels', (v) => v as String),
          size: $checkedConvert('size', (v) => v as String),
          quality: $checkedConvert('quality', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String?),
          seeds: $checkedConvert('seeds', (v) => (v as num).toInt()),
          peers: $checkedConvert('peers', (v) => (v as num).toInt()),
          sizeBytes:
              $checkedConvert('size_bytes', (v) => (v as num).toDouble()),
          dateUploadedUnix: $checkedConvert(
              'date_uploaded_unix', (v) => (v as num).toDouble()),
          dateUploaded: $checkedConvert(
              'date_uploaded', (v) => Torrent._loadDateTime(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'isRepack': 'is_repack',
        'videoCodec': 'video_codec',
        'bitDepth': 'bit_depth',
        'audioChannels': 'audio_channels',
        'sizeBytes': 'size_bytes',
        'dateUploadedUnix': 'date_uploaded_unix',
        'dateUploaded': 'date_uploaded'
      },
    );

Map<String, dynamic> _$TorrentToJson(Torrent instance) => <String, dynamic>{
      'url': instance.url,
      'hash': instance.hash,
      'quality': instance.quality,
      'type': instance.type,
      'is_repack': instance.isRepack,
      'video_codec': instance.videoCodec,
      'bit_depth': instance.bitDepth,
      'audio_channels': instance.audioChannels,
      'seeds': instance.seeds,
      'peers': instance.peers,
      'size': instance.size,
      'size_bytes': instance.sizeBytes,
      'date_uploaded': Torrent._dumpDateTime(instance.dateUploaded),
      'date_uploaded_unix': instance.dateUploadedUnix,
    };
