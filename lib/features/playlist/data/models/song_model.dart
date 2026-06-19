import 'package:freezed_annotation/freezed_annotation.dart';
part 'song_model.freezed.dart';
part 'song_model.g.dart';

@freezed
abstract class SongModel with _$SongModel {
  const factory SongModel({
    required String id,
    required String title,
    required List<String> artists,
    required String duration,
    required String coverImage,
    required int index,
    String? audioUrl,
    String? uploader,
    required String createdAt,
  }) = _SongModel;
  
  factory SongModel.fromJson(Map<String, dynamic> json) =>
      _$SongModelFromJson(json);
}