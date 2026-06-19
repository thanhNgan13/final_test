// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SongModel _$SongModelFromJson(Map<String, dynamic> json) => _SongModel(
  id: json['id'] as String,
  title: json['title'] as String,
  artists: (json['artists'] as List<dynamic>).map((e) => e as String).toList(),
  duration: json['duration'] as String,
  coverImage: json['coverImage'] as String,
  index: (json['index'] as num).toInt(),
  audioUrl: json['audioUrl'] as String?,
  uploader: json['uploader'] as String?,
  createdAt: json['createdAt'] as String,
);

Map<String, dynamic> _$SongModelToJson(_SongModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'artists': instance.artists,
      'duration': instance.duration,
      'coverImage': instance.coverImage,
      'index': instance.index,
      'audioUrl': instance.audioUrl,
      'uploader': instance.uploader,
      'createdAt': instance.createdAt,
    };
