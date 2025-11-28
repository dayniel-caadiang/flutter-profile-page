import 'package:flutter/material.dart';

class CurrentGoalCard extends StatelessWidget {
  const CurrentGoalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(12),
        border: const Border(
          left: BorderSide(color: Color(0xFFE85D4C), width: 4),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'CURRENT GOAL',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 1.5,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            "I'm learning RPA development as I enjoy automating tasks. I'm also pursuing Backend and Cloud development to expand my skills.",
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[400],
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}