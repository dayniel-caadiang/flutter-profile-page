import 'package:flutter/material.dart';

class HobbiesInterestsRow extends StatelessWidget {
  const HobbiesInterestsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: _buildHobbiesCard()),
        const SizedBox(width: 16),
        Expanded(child: _buildInterestsCard()),
      ],
    );
  }

  Widget _buildHobbiesCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Text('🎮', style: TextStyle(fontSize: 18)),
              SizedBox(width: 8),
              Text(
                'Hobbies',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          _buildHobbyItem(Icons.music_note, 'Playing Musical Instruments'),
          const SizedBox(height: 10),
          _buildHobbyItem(Icons.tv, 'Watching Dramas'),
          const SizedBox(height: 10),
          _buildHobbyItem(Icons.sports_esports, 'Playing Online Games'),
        ],
      ),
    );
  }

  Widget _buildInterestsCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Text('❤️', style: TextStyle(fontSize: 18)),
              SizedBox(width: 8),
              Text(
                'Interests',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          _buildHobbyItem(Icons.mic, 'Singing'),
          const SizedBox(height: 10),
          _buildHobbyItem(Icons.pets, 'Cats'),
          const SizedBox(height: 10),
          _buildHobbyItem(Icons.camera_alt, 'Taking Pictures & Editing Videos'),
        ],
      ),
    );
  }

  Widget _buildHobbyItem(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 16, color: const Color(0xFF4ECDC4)),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            text,
            style: TextStyle(fontSize: 13, color: Colors.grey[400]),
          ),
        ),
      ],
    );
  }
}