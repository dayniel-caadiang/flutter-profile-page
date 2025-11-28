import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF2D1F1F), Color(0xFF1A1A1A)],
        ),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFF3D2A2A)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Exploring through Tech',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            "In our capstone project, we developed a VR game inspired by traditional Filipino games. My main role was handling most of the game's development while coordinating and reviewing my teammates' work.",
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey[400],
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}