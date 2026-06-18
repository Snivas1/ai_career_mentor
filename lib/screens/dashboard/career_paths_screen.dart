import 'package:flutter/material.dart';

class CareerPathsScreen extends StatelessWidget {
  const CareerPathsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Career Paths"),
        backgroundColor: Colors.indigo,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          CareerCard(
            title: "AI Engineer",
            skills: "Python, ML, Deep Learning",
          ),
          CareerCard(
            title: "Flutter Developer",
            skills: "Flutter, Dart, Firebase",
          ),
          CareerCard(
            title: "Full Stack Developer",
            skills: "React, Node.js, Database",
          ),
          CareerCard(
            title: "Data Scientist",
            skills: "Python, SQL, Statistics",
          ),
        ],
      ),
    );
  }
}

class CareerCard extends StatelessWidget {
  final String title;
  final String skills;

  const CareerCard({
    super.key,
    required this.title,
    required this.skills,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: const Icon(Icons.work, color: Colors.indigo),
        title: Text(title),
        subtitle: Text(skills),
      ),
    );
  }
}