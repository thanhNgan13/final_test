import 'package:freezed_annotation/freezed_annotation.dart';
import 'playlist_model.dart';
import 'song_model.dart';
import 'pagination_model.dart';

part 'playlist_responses.freezed.dart';
part 'playlist_responses.g.dart';

@freezed
abstract class PlaylistsResponse with _$PlaylistsResponse {
  const factory PlaylistsResponse({
    required List<PlaylistModel> items,
  }) = _PlaylistsResponse;

  factory PlaylistsResponse.fromJson(Map<String, dynamic> json) =>
      _$PlaylistsResponseFromJson(json);
}

@freezed
abstract class PlaylistSongsResponse with _$PlaylistSongsResponse {
  const factory PlaylistSongsResponse({
    required List<SongModel> items,
    required PaginationModel pagination,
  }) = _PlaylistSongsResponse;

  factory PlaylistSongsResponse.fromJson(Map<String, dynamic> json) =>
      _$PlaylistSongsResponseFromJson(json);
}

@freezed
abstract class SongsResponse with _$SongsResponse {
  const factory SongsResponse({
    required List<SongModel> items,
  }) = _SongsResponse;

  factory SongsResponse.fromJson(Map<String, dynamic> json) =>
      _$SongsResponseFromJson(json);
}

