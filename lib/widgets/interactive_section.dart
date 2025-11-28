import 'package:flutter/material.dart';

class InteractiveSection extends StatelessWidget {
  final int profileViews;
  final bool isLiked;
  final VoidCallback onViewTap;
  final VoidCallback onLikeTap;

  const InteractiveSection({
    super.key,
    required this.profileViews,
    required this.isLiked,
    required this.onViewTap,
    required this.onLikeTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Profile Views
              GestureDetector(
                onTap: onViewTap,
                child: Column(
                  children: [
                    const Icon(Icons.visibility, color: Color(0xFF4ECDC4)),
                    const SizedBox(height: 4),
                    Text(
                      '$profileViews',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Views',
                      style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                    ),
                  ],
                ),
              ),
              // Like Button
              GestureDetector(
                onTap: onLikeTap,
                child: Column(
                  children: [
                    Icon(
                      isLiked ? Icons.favorite : Icons.favorite_border,
                      color: const Color(0xFFE85D4C),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      isLiked ? 'Liked!' : 'Like',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          // Contact Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('Opening email...'),
                    backgroundColor: const Color(0xFFE85D4C),
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                );
              },
              icon: const Icon(Icons.email),
              label: const Text('Contact Me'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFE85D4C),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}