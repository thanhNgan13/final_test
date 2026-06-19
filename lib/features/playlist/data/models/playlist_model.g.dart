// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlaylistModel _$PlaylistModelFromJson(Map<String, dynamic> json) =>
    _PlaylistModel(
      id: json['id'] as String,
      title: json['title'] as String,
      coverImage: json['coverImage'] as String,
      songCount: (json['songCount'] as num).toInt(),
      createdAt: json['createdAt'] as String,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$PlaylistModelToJson(_PlaylistModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'coverImage': instance.coverImage,
      'songCount': instance.songCount,
      'createdAt': instance.createdAt,
      'url': instance.url,
    };
