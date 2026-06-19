import 'package:dio/dio.dart';
import 'package:final_test/core/constants/app_constants.dart';
import 'package:final_test/core/network/dio_client.dart';
import 'package:final_test/features/playlist/data/datasources/playlist_api_service.dart';
import 'package:final_test/features/playlist/data/models/pagination_model.dart';
import 'package:final_test/features/playlist/data/models/playlist_model.dart';
import 'package:final_test/features/playlist/data/models/song_model.dart';

class PlaylistRepository {
  final PlaylistApiService _apiService;

  PlaylistRepository({PlaylistApiService? apiService, DioClient? client})
      : _apiService =
            apiService ?? PlaylistApiService((client ?? DioClient()).dio);

  // ── Section 1: Top playlists ──────────────────────────────────────────────
  Future<List<PlaylistModel>> getLatestPlaylists() async {
    try {
      final response = await _apiService.getLatestPlaylists();
      return response.data.items;
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  // ── Section 2: Songs in playlist — cursor-based load more ─────────────────
  Future<({List<SongModel> songs, PaginationModel pagination})> getPlaylistSongs({
    String? cursor,
    int limit = 5,
  }) async {
    try {
      final response = await _apiService.getPlaylistSongs(
        playlistId: AppConstants.defaultPlaylistId,
        limit: limit,
        cursor: cursor,
      );
      return (
        songs: response.data.items,
        pagination: response.data.pagination,
      );
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  // ── Section 3: Random songs ───────────────────────────────────────────────
  Future<List<SongModel>> getRandomSongs({int limit = 4}) async {
    try {
      final response = await _apiService.getRandomSongs(
        playlistId: AppConstants.defaultPlaylistId,
        limit: limit,
      );
      return response.data.items;
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  // ── Error handler ─────────────────────────────────────────────────────────
  Exception _handleError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
        return Exception('Kết nối quá thời gian, vui lòng thử lại.');
      case DioExceptionType.connectionError:
        return Exception('Không có kết nối mạng.');
      case DioExceptionType.badResponse:
        return Exception('Lỗi server (${e.response?.statusCode}).');
      default:
        return Exception('Đã có lỗi xảy ra. Vui lòng thử lại.');
    }
  }
}