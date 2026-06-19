import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:final_test/core/network/api_response.dart';
import 'package:final_test/features/playlist/data/models/playlist_responses.dart';

part 'playlist_api_service.g.dart';

@RestApi()
abstract class PlaylistApiService {
  factory PlaylistApiService(Dio dio, {String baseUrl}) = _PlaylistApiService;

  @GET('/playlist-services/playlists/latest')
  Future<ApiResponse<PlaylistsResponse>> getLatestPlaylists({
    @Query('limit') int limit = 3,
    @Query('sort') String sort = 'desc',
  });

  @GET('/playlist-services/playlists/{playlistId}/songs')
  Future<ApiResponse<PlaylistSongsResponse>> getPlaylistSongs({
    @Path('playlistId') required String playlistId,
    @Query('limit') int limit = 5,
    @Query('cursor') String? cursor,
  });

  @GET('/playlist-services/playlists/{playlistId}/songs/random')
  Future<ApiResponse<SongsResponse>> getRandomSongs({
    @Path('playlistId') required String playlistId,
    @Query('limit') int limit = 4,
  });
}
