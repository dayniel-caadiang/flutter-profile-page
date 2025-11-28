import 'package:flutter/material.dart';
import '../widgets/profile_picture.dart';
import '../widgets/bio_section.dart';
import '../widgets/tech_tags.dart';
import '../widgets/education_row.dart';
import '../widgets/project_card.dart';
import '../widgets/focus_area.dart';
import '../widgets/key_skills_card.dart';
import '../widgets/current_goal_card.dart';
import '../widgets/hobbies_interests_row.dart';
import '../widgets/interactive_section.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
              if (constraints.maxWidth < 700) {
                return _buildMobileLayout();
              }
              return _buildDesktopLayout();
            },
          ),
        ),
      ),
    );
  }

  Widget _buildMobileLayout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ProfilePicture(),
        const SizedBox(height: 24),
        const BioSection(),
        const SizedBox(height: 20),
        const TechTags(),
        const SizedBox(height: 24),
        InteractiveSection(
          profileViews: _profileViews,
          isLiked: _isLiked,
          onViewTap: () => setState(() => _profileViews++),
          onLikeTap: () => setState(() => _isLiked = !_isLiked),
        ),
        const SizedBox(height: 24),
        const EducationRow(),
        const SizedBox(height: 24),
        const ProjectCard(),
        const SizedBox(height: 24),
        const FocusArea(),
        const SizedBox(height: 24),
        const KeySkillsCard(),
        const SizedBox(height: 24),
        const CurrentGoalCard(),
        const SizedBox(height: 24),
        const HobbiesInterestsRow(),
      ],
    );
  }

  Widget _buildDesktopLayout() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BioSection(),
              const SizedBox(height: 20),
              const TechTags(),
              const SizedBox(height: 24),
              const CurrentGoalCard(),
              const SizedBox(height: 24),
              const HobbiesInterestsRow(),
              const SizedBox(height: 24),
              const KeySkillsCard(),
            ],
          ),
        ),
        const SizedBox(width: 24),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              const ProfilePicture(),
              const SizedBox(height: 24),
              const EducationRow(),
              const SizedBox(height: 24),
              const ProjectCard(),
              const SizedBox(height: 24),
              const FocusArea(),
              const SizedBox(height: 24),
              InteractiveSection(
                profileViews: _profileViews,
                isLiked: _isLiked,
                onViewTap: () => setState(() => _profileViews++),
                onLikeTap: () => setState(() => _isLiked = !_isLiked),
              ),
            ],
          ),
        ),
      ],
    );
  }
}