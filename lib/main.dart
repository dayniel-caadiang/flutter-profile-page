import 'package:flutter/material.dart';
import 'pages/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dayniel Caadiang - Profile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0D0D0D),
        primaryColor: const Color(0xFFE85D4C),
        cardColor: const Color(0xFF1A1A1A),
        fontFamily: 'Roboto',
      ),
      home: const ProfilePage(),
    );
  }
}