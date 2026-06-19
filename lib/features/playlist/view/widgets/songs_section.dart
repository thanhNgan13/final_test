import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:final_test/features/playlist/data/models/song_model.dart';

class SongsSection extends StatefulWidget {
  final List<SongModel> songs;
  final bool isLoadingMore;
  final bool hasNext;
  final VoidCallback onLoadMore;

  const SongsSection({
    super.key,
    required this.songs,
    required this.isLoadingMore,
    required this.hasNext,
    required this.onLoadMore,
  });

  @override
  State<SongsSection> createState() => _SongsSectionState();
}

class _SongsSectionState extends State<SongsSection> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      if (widget.hasNext && !widget.isLoadingMore) {
        widget.onLoadMore();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.songs.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 24, 16, 12),
          child: Text(
            'Bài hát trong playlist',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 160,
          child: ListView.builder(
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            // +1 cho loading indicator ở cuối
            itemCount: widget.songs.length + (widget.isLoadingMore ? 1 : 0),
            itemBuilder: (context, index) {
              // Item cuối = loading indicator
              if (index == widget.songs.length) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Center(
                    child: CircularProgressIndicator(
                      color: Color(0xFF8B2FC9),
                      strokeWidth: 2,
                    ),
                  ),
                );
              }
              final song = widget.songs[index];
              return _SongCard(song: song, rank: index + 1);
            },
          ),
        ),
      ],
    );
  }
}

class _SongCard extends StatelessWidget {
  final SongModel song;
  final int rank;
  const _SongCard({required this.song, required this.rank});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xFF1E1535),
      ),
      clipBehavior: Clip.hardEdge,
      child: Stack(
        children: [
          // Cover image
          CachedNetworkImage(
            imageUrl: song.coverImage,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
            errorWidget: (_, __, ___) => Container(color: const Color(0xFF2A1F3D)),
          ),
          // Gradient
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.black.withOpacity(0.85)],
              ),
            ),
          ),
          // Ranking badge
          Positioned(
            top: 8,
            left: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
              decoration: BoxDecoration(
                color: const Color(0xFF6B21A8),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                rank.toString().padLeft(2, '0'),
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 11,
                ),
              ),
            ),
          ),
          // Song info
          Positioned(
            bottom: 8,
            left: 8,
            right: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  song.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  song.artists.join(', '),
                  style: const TextStyle(color: Colors.white60, fontSize: 10),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Text(
                  song.duration,
                  style: const TextStyle(color: Colors.white54, fontSize: 10),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
