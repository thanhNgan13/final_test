import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:final_test/features/playlist/data/repositories/playlist_repository.dart';
import 'package:final_test/features/playlist/view/cubit/playlist_cubit.dart';
import 'package:final_test/features/playlist/view/cubit/playlist_state.dart';
import 'package:final_test/features/playlist/view/widgets/songs_section.dart';
import 'package:final_test/features/playlist/view/widgets/suggestion_section.dart';
import 'package:final_test/features/playlist/view/widgets/top_playlist_section.dart';

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PlaylistCubit(repository: PlaylistRepository())..fetchAll(),
      child: const _PlaylistView(),
    );
  }
}

class _PlaylistView extends StatelessWidget {
  const _PlaylistView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D0B1E),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Danh Sách Phát',
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Icon(Icons.more_vert, color: Colors.white),
          SizedBox(width: 12),
        ],
      ),
      body: BlocBuilder<PlaylistCubit, PlaylistState>(
        builder: (context, state) {
          if (state is PlaylistLoading) {
            return const Center(
              child: CircularProgressIndicator(color: Color(0xFF8B2FC9)),
            );
          }

          if (state is PlaylistError) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    state.message,
                    style: const TextStyle(color: Colors.white70),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF8B2FC9),
                    ),
                    onPressed: () => context.read<PlaylistCubit>().fetchAll(),
                    child: const Text('Thử lại'),
                  ),
                ],
              ),
            );
          }

          if (state is PlaylistLoaded) {
            if (state.playlists.isEmpty && state.songs.isEmpty) {
              return const Center(
                child: Text(
                  'Không có dữ liệu',
                  style: TextStyle(color: Colors.white70),
                ),
              );
            }

            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TopPlaylistSection(playlists: state.playlists),
                  SongsSection(
                    songs: state.songs,
                    isLoadingMore: state.isLoadingMore,
                    hasNext: state.hasNextSongs,
                    onLoadMore: () =>
                        context.read<PlaylistCubit>().loadMoreSongs(),
                  ),
                  SuggestionSection(songs: state.randomSongs),
                  const SizedBox(height: 24),
                ],
              ),
            );
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }
}
