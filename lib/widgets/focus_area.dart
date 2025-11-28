import 'package:flutter/material.dart';

class FocusArea extends StatelessWidget {
  const FocusArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'FOCUS AREA',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.grey[500],
            letterSpacing: 1.5,
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            _buildFocusChip('Backend', const Color(0xFFE85D4C)),
            const SizedBox(width: 10),
            _buildFocusChip('Cloud', const Color(0xFFE88D4C)),
            const SizedBox(width: 10),
            _buildFocusChip('Apps Team', const Color(0xFFB84C4C)),
          ],
        ),
      ],
    );
  }

  Widget _buildFocusChip(String text, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}