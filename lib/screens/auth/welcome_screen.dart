import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'register_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4F46E5),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const SizedBox(height: 30),

              const Icon(Icons.psychology, size: 100, color: Colors.white),

              const SizedBox(height: 20),

              const Text(
                "AI Career Mentor",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Build Your Future with AI",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white70, fontSize: 18),
              ),

              const SizedBox(height: 30),

              const Text(
                "Get personalized career guidance, resume analysis, skill tracking and AI-powered recommendations.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),

              const SizedBox(height: 30),

              Card(
                child: ListTile(
                  leading: Icon(Icons.track_changes, color: Colors.indigo),
                  title: Text("Career Guidance"),
                  subtitle: Text(
                    "Find the best career path based on your skills",
                  ),
                ),
              ),

              const SizedBox(height: 10),

              Card(
                child: ListTile(
                  leading: Icon(Icons.description, color: Colors.indigo),
                  title: Text("Resume Analyzer"),
                  subtitle: Text("Improve your resume and job opportunities"),
                ),
              ),

              const SizedBox(height: 10),

              Card(
                child: ListTile(
                  leading: Icon(Icons.trending_up, color: Colors.indigo),
                  title: Text("Skill Tracking"),
                  subtitle: Text("Monitor your learning progress"),
                ),
              ),

              const SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.indigo,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const RegisterScreen()),
                    );
                  },
                  child: const Text("Create Account"),
                ),
              ),

              const SizedBox(height: 10),

              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const LoginScreen()),
                  );
                },
                child: const Text(
                  "Already have an account? Login",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
