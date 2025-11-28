import 'package:flutter/material.dart';

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

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // Interactive state
  int _profileViews = 247;
  bool _isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: LayoutBuilder(
            builder: (context, constraints) {
              // Responsive: stack vertically on narrow screens
              if (constraints.maxWidth < 700) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 1. Profile Picture
                    _buildProfilePicture(),
                    const SizedBox(height: 24),
                    // 2. Name
                    const Text(
                      'DAYNIEL LOUBIEN D. CAADIANG',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFE85D4C),
                        letterSpacing: 1.2,
                      ),
                    ),
                    const SizedBox(height: 16),
                    // 3. Bio
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
                    const SizedBox(height: 20),
                    // 8. Tech Tags
                    _buildTechTags(),
                    const SizedBox(height: 24),
                    // 11. Interactive Section (Contact, Views, Like)
                    _buildInteractiveSection(),
                    const SizedBox(height: 24),
                    // 4. Education
                    _buildEducationRow(),
                    const SizedBox(height: 24),
                    // 5. Projects
                    _buildProjectCard(),
                    const SizedBox(height: 24),
                    // 6. Focus Area
                    _buildFocusArea(),
                    const SizedBox(height: 24),
                    // 7. Skills
                    _buildKeySkillsCard(),
                    const SizedBox(height: 24),
                    // 9. Current Goal
                    _buildCurrentGoalCard(),
                    const SizedBox(height: 24),
                    // 10. Hobbies & Interests
                    _buildHobbiesInterestsRow(),
                    const SizedBox(height: 24),

                  ],
                );
              }
              // Wide screen: side by side
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(flex: 3, child: _buildLeftColumn()),
                  const SizedBox(width: 24),
                  Expanded(flex: 2, child: _buildRightColumn()),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildLeftColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Name Header
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
        // Bio Description
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
        const SizedBox(height: 20),
        // Tech Tags
        _buildTechTags(),
        const SizedBox(height: 24),
        // Current Goal Card
        _buildCurrentGoalCard(),
        const SizedBox(height: 24),
        // Hobbies and Interests Row
        _buildHobbiesInterestsRow(),
        const SizedBox(height: 24),
        // Key Skills Card
        _buildKeySkillsCard(),
      ],
    );
  }

  Widget _buildRightColumn() {
    return Column(
      children: [
        _buildProfilePicture(),
        const SizedBox(height: 24),
        _buildEducationRow(),
        const SizedBox(height: 24),
        _buildProjectCard(),
        const SizedBox(height: 24),
        _buildFocusArea(),
        const SizedBox(height: 24),
        _buildInteractiveSection(),
      ],
    );
  }

  Widget _buildTechTags() {
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

  Widget _buildCurrentGoalCard() {
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

  Widget _buildHobbiesInterestsRow() {
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

  Widget _buildKeySkillsCard() {
    return Container(
      width: double.infinity,
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
              Text('</>', style: TextStyle(fontSize: 16, color: Color(0xFF4ECDC4))),
              SizedBox(width: 10),
              Text(
                'Key Skills',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              _buildSkillChip('C#'),
              const SizedBox(width: 10),
              _buildSkillChip('Python'),
              const SizedBox(width: 10),
              _buildSkillChip('SQL'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSkillChip(String skill) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFF2A2A2A),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        skill,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildProfilePicture() {
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
            'assets/images/profile.jpg', // Replace with your actual image
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

  Widget _buildEducationRow() {
    return Row(
      children: [
        Expanded(
          child: _buildInfoCard('Education', 'BSIT'),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: _buildInfoCard('University', 'TIP'),
        ),
      ],
    );
  }

  Widget _buildInfoCard(String label, String value) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey[500],
            ),
          ),
          const SizedBox(height: 6),
          Text(
            value,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProjectCard() {
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

  Widget _buildFocusArea() {
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

  Widget _buildInteractiveSection() {
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
                onTap: () => setState(() => _profileViews++),
                child: Column(
                  children: [
                    const Icon(Icons.visibility, color: Color(0xFF4ECDC4)),
                    const SizedBox(height: 4),
                    Text(
                      '$_profileViews',
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
                onTap: () => setState(() => _isLiked = !_isLiked),
                child: Column(
                  children: [
                    Icon(
                      _isLiked ? Icons.favorite : Icons.favorite_border,
                      color: const Color(0xFFE85D4C),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      _isLiked ? 'Liked!' : 'Like',
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