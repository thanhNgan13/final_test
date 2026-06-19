// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlaylistsResponse _$PlaylistsResponseFromJson(Map<String, dynamic> json) =>
    _PlaylistsResponse(
      items: (json['items'] as List<dynamic>)
          .map((e) => PlaylistModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PlaylistsResponseToJson(_PlaylistsResponse instance) =>
    <String, dynamic>{'items': instance.items.map((e) => e.toJson()).toList()};

_PlaylistSongsResponse _$PlaylistSongsResponseFromJson(
  Map<String, dynamic> json,
) => _PlaylistSongsResponse(
  items: (json['items'] as List<dynamic>)
      .map((e) => SongModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  pagination: PaginationModel.fromJson(
    json['pagination'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$PlaylistSongsResponseToJson(
  _PlaylistSongsResponse instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'pagination': instance.pagination.toJson(),
};

_SongsResponse _$SongsResponseFromJson(Map<String, dynamic> json) =>
    _SongsResponse(
      items: (json['items'] as List<dynamic>)
          .map((e) => SongModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SongsResponseToJson(_SongsResponse instance) =>
    <String, dynamic>{'items': instance.items.map((e) => e.toJson()).toList()};
