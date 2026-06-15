import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const AICareerMentorApp());
}

class AICareerMentorApp extends StatelessWidget {
  const AICareerMentorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AI Career Mentor',
      home: const SplashScreen(),
    );
  }
}