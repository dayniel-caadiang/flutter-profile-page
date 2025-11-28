import 'package:flutter/material.dart';

class BioSection extends StatelessWidget {
  const BioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'DAYNIEL LOUBIEN D. CAADIANG',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Color(0xFFE85D4C),
            letterSpacing: 1.2,
          ),
        ),
        const SizedBox(height: 16),
        RichText(
          text: const TextSpan(
            style: TextStyle(
              fontSize: 15,
              color: Colors.white70,
              height: 1.6,
            ),
            children: [
              TextSpan(
                text: 'I graduated from the Technological Institute of the Philippines with a Bachelor of Science in Information Technology. I have a growing passion for ',
              ),
              TextSpan(
                text: 'automation',
                style: TextStyle(color: Color(0xFF4ECDC4)),
              ),
              TextSpan(text: ', '),
              TextSpan(
                text: 'backend systems',
                style: TextStyle(color: Color(0xFFE85D4C)),
              ),
              TextSpan(text: ', and '),
              TextSpan(
                text: 'cloud technologies',
                style: TextStyle(color: Color(0xFF4ECDC4)),
              ),
              TextSpan(
                text: '—driven by curiosity and continuous learning in software development.',
              ),
            ],
          ),
        ),
      ],
    );
  }
}