import 'package:flutter/material.dart';
import '../../models/user_profile.dart';
import '../profile/profile_screen.dart';
import 'skill_assessment_screen.dart';
import 'resume_analyzer_screen.dart';
import 'career_paths_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final userName = UserProfile.name.isEmpty ? "Student" : UserProfile.name;
    int score = 5;

    if (UserProfile.name.isNotEmpty) score += 2;
    if (UserProfile.email.isNotEmpty) score += 2;
    if (UserProfile.phone.isNotEmpty) score += 2;
    if (UserProfile.college.isNotEmpty) score += 3;
    if (UserProfile.branch.isNotEmpty) score += 2;
    if (UserProfile.year.isNotEmpty) score += 2;
    if (UserProfile.careerGoal.isNotEmpty) score += 2;

    score += UserProfile.skillsCount * 10;

    if (score > 100) {
      score = 100;
    }

    String recommendedCareer() {
      if (UserProfile.skillsCount >= 3) {
        return "AI Engineer";
      }
      return "Software Developer";
    }

    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),

      appBar: AppBar(
        title: const Text("AI Career Mentor"),
        backgroundColor: Colors.indigo,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF4F46E5), Color(0xFF6366F1)],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Welcome Back 👋",
                    style: TextStyle(color: Colors.white70),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    userName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    UserProfile.careerGoal.isEmpty
                        ? "Set your career goal"
                        : UserProfile.careerGoal,
                    style: const TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const Text(
                      "Career Readiness Score",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "$score%",
                      style: const TextStyle(
                        fontSize: 40,
                        color: Colors.indigo,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 10),
                    LinearProgressIndicator(value: score / 100),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
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
                      MaterialPageRoute(builder: (_) => const ProfileScreen()),
                    );
                  },
                ),
                DashboardCard(
                  title: "Skills",
                  icon: Icons.psychology,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const SkillAssessmentScreen(),
                      ),
                    );
                  },
                ),
                DashboardCard(
                  title: "Resume",
                  icon: Icons.description,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const ResumeAnalyzerScreen(),
                      ),
                    );
                  },
                ),
                DashboardCard(
                  title: "Careers",
                  icon: Icons.work,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const CareerPathsScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),

            const SizedBox(height: 20),

            Card(
              child: ListTile(
                leading: const Icon(Icons.auto_awesome),
                title: const Text("Recommended Career"),
                subtitle: Text(recommendedCareer()),
              ),
            ),
            const SizedBox(height: 15),
            Card(
              child: ListTile(
                leading: const Icon(Icons.school),
                title: const Text("Today's Goal"),
                subtitle: const Text("Complete Flutter State Management"),
              ),
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
      borderRadius: BorderRadius.circular(20),
      child: Card(
        elevation: 4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: Colors.indigo),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
