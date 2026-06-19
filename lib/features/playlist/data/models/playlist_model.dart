import 'package:freezed_annotation/freezed_annotation.dart';

part 'playlist_model.freezed.dart';
part 'playlist_model.g.dart';

@freezed
abstract class PlaylistModel with _$PlaylistModel {
  const factory PlaylistModel({
    required String id,
    required String title,
    required String coverImage,
    required int    songCount,
    required String createdAt,
    String?         url,
  }) = _PlaylistModel;

  factory PlaylistModel.fromJson(Map<String, dynamic> json) =>
      _$PlaylistModelFromJson(json);
}
