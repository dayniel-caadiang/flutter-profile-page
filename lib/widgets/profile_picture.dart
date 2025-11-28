import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: const Color(0xFFE85D4C),
            width: 3,
          ),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFFE85D4C).withOpacity(0.3),
              blurRadius: 20,
              spreadRadius: 2,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            'assets/images/profile.png',
            width: 180,
            height: 200,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                width: 180,
                height: 200,
                color: const Color(0xFF2A2A2A),
                child: const Icon(
                  Icons.person,
                  size: 80,
                  color: Color(0xFFE85D4C),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}