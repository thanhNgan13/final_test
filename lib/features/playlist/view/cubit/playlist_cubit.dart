import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:final_test/features/playlist/data/repositories/playlist_repository.dart';
import 'playlist_state.dart';

class PlaylistCubit extends Cubit<PlaylistState> {
  final PlaylistRepository _repository;

  PlaylistCubit({PlaylistRepository? repository})
      : _repository = repository ?? PlaylistRepository(),
        super(PlaylistInitial());

  Future<void> fetchAll() async {
    emit(PlaylistLoading());
    try {
      final results = await Future.wait([
        _repository.getLatestPlaylists(),
        _repository.getPlaylistSongs(),
        _repository.getRandomSongs(),
      ]);

      final playlists = results[0] as dynamic; 
      final songsResult = results[1] as dynamic; 
      final randomSongs = results[2] as dynamic; 

      emit(PlaylistLoaded(
        playlists: playlists,
        songs: songsResult.songs,
        randomSongs: randomSongs,
        hasNextSongs: songsResult.pagination.hasNext,
        nextCursor: songsResult.pagination.nextCursor,
      ));
    } catch (e) {
      emit(PlaylistError(e.toString().replaceAll('Exception: ', '')));
    }
  }

  Future<void> loadMoreSongs() async {
    final currentState = state;
    if (currentState is! PlaylistLoaded) return;
    if (!currentState.hasNextSongs || currentState.isLoadingMore) return;

    emit(currentState.copyWith(isLoadingMore: true));

    try {
      final result = await _repository.getPlaylistSongs(
        cursor: currentState.nextCursor,
      );

      final updatedState = currentState.copyWith(
        songs: [...currentState.songs, ...result.songs], // append
        hasNextSongs: result.pagination.hasNext,
        nextCursor: result.pagination.nextCursor,
        isLoadingMore: false,
      );
      emit(updatedState);
    } catch (e) {
      emit(currentState.copyWith(isLoadingMore: false));
    }
  }
}
