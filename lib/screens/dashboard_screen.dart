import 'package:flutter/material.dart';
import 'profile_screen.dart';
import 'skill_assessment_screen.dart';
import 'resume_analyzer_screen.dart';
import 'career_paths_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AI Career Mentor"),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          children: [
            DashboardCard(
              title: "Profile",
              icon: Icons.person,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ),
                );
              },
            ),

            DashboardCard(
              title: "Skill Assessment",
              icon: Icons.psychology,
               onTap: () {
               Navigator.push(
                context,
                  MaterialPageRoute(
        builder: (context) => const SkillAssessmentScreen(),
      ),
    );
  },
),

            DashboardCard(
  title: "Resume Analyzer",
  icon: Icons.description,
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ResumeAnalyzerScreen(),
      ),
    );
  },
),

            DashboardCard(
  title: "Career Paths",
  icon: Icons.work,
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const CareerPathsScreen(),
      ),
    );
  },
),
          ],
        ),
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const DashboardCard({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Card(
        elevation: 4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 50,
              color: Colors.indigo,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}