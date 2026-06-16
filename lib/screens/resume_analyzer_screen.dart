import 'package:flutter/material.dart';

class ResumeAnalyzerScreen extends StatelessWidget {
  const ResumeAnalyzerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Resume Analyzer"),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Icon(
              Icons.description,
              size: 100,
              color: Colors.indigo,
            ),

            const SizedBox(height: 20),

            const Text(
              "Upload Your Resume",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {},
              child: const Text("Choose Resume"),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text("Resume Analysis"),
                    content: const Text(
                      "Your resume shows strong Flutter and Python skills.\n\nRecommended Role:\nMobile App Developer",
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("OK"),
                      ),
                    ],
                  ),
                );
              },
              child: const Text("Analyze Resume"),
            ),
          ],
        ),
      ),
    );
  }
}