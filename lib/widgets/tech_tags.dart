import 'package:flutter/material.dart';

class TechTags extends StatelessWidget {
  const TechTags({super.key});

  @override
  Widget build(BuildContext context) {
    final tags = ['Automation', 'Backend Development', 'Cloud Technologies', 'RPA'];
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: tags.map((tag) => _buildTag(tag)).toList(),
    );
  }

  Widget _buildTag(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFF333333)),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}