import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:final_test/features/playlist/data/models/song_model.dart';

class SuggestionSection extends StatelessWidget {
  final List<SongModel> songs;
  const SuggestionSection({super.key, required this.songs});

  @override
  Widget build(BuildContext context) {
    if (songs.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 24, 16, 12),
          child: Text(
            'Danh sách gợi ý',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.78,
            ),
            itemCount: songs.length,
            itemBuilder: (context, index) {
              return _SuggestionCard(song: songs[index]);
            },
          ),
        ),
      ],
    );
  }
}

class _SuggestionCard extends StatelessWidget {
  final SongModel song;
  const _SuggestionCard({required this.song});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xFF1E1535),
      ),
      clipBehavior: Clip.hardEdge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Cover image — chiếm ~65% chiều cao card
          Expanded(
            child: CachedNetworkImage(
              imageUrl: song.coverImage,
              width: double.infinity,
              fit: BoxFit.cover,
              errorWidget: (_, __, ___) =>
                  Container(color: const Color(0xFF2A1F3D)),
            ),
          ),
          // Info
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  song.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Text(
                  song.artists.join(', '),
                  style: const TextStyle(color: Colors.white60, fontSize: 11),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.access_time,
                        color: Colors.white54, size: 11),
                    const SizedBox(width: 3),
                    Text(
                      song.duration,
                      style: const TextStyle(
                          color: Colors.white54, fontSize: 10),
                    ),
                    const Spacer(),
                    const Icon(Icons.favorite_border,
                        color: Colors.white54, size: 13),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
