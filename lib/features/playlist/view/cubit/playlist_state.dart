import 'package:equatable/equatable.dart';
import 'package:final_test/features/playlist/data/models/playlist_model.dart';
import 'package:final_test/features/playlist/data/models/song_model.dart';

abstract class PlaylistState extends Equatable {
  const PlaylistState();

  @override
  List<Object?> get props => [];
}

class PlaylistInitial extends PlaylistState {}

class PlaylistLoading extends PlaylistState {}

class PlaylistLoaded extends PlaylistState {
  final List<PlaylistModel> playlists;
  final List<SongModel> songs;
  final List<SongModel> randomSongs;
  final bool hasNextSongs;
  final String? nextCursor;
  final bool isLoadingMore;

  const PlaylistLoaded({
    required this.playlists,
    required this.songs,
    required this.randomSongs,
    required this.hasNextSongs,
    this.nextCursor,
    this.isLoadingMore = false,
  });

  PlaylistLoaded copyWith({
    List<PlaylistModel>? playlists,
    List<SongModel>? songs,
    List<SongModel>? randomSongs,
    bool? hasNextSongs,
    String? nextCursor,
    bool? isLoadingMore,
  }) {
    return PlaylistLoaded(
      playlists: playlists ?? this.playlists,
      songs: songs ?? this.songs,
      randomSongs: randomSongs ?? this.randomSongs,
      hasNextSongs: hasNextSongs ?? this.hasNextSongs,
      nextCursor: nextCursor ?? this.nextCursor,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
    );
  }

  @override
  List<Object?> get props => [
        playlists,
        songs,
        randomSongs,
        hasNextSongs,
        nextCursor,
        isLoadingMore,
      ];
}

class PlaylistError extends PlaylistState {
  final String message;

  const PlaylistError(this.message);

  @override
  List<Object?> get props => [message];
}
