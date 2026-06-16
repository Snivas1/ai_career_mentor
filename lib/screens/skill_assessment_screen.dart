import 'package:flutter/material.dart';

class SkillAssessmentScreen extends StatefulWidget {
  const SkillAssessmentScreen({super.key});

  @override
  State<SkillAssessmentScreen> createState() => _SkillAssessmentScreenState();
}

class _SkillAssessmentScreenState extends State<SkillAssessmentScreen> {
  bool flutter = false;
  bool python = false;
  bool aiMl = false;
  bool webDev = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Skill Assessment"),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CheckboxListTile(
              title: const Text("Flutter"),
              value: flutter,
              onChanged: (value) {
                setState(() {
                  flutter = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text("Python"),
              value: python,
              onChanged: (value) {
                setState(() {
                  python = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text("AI / ML"),
              value: aiMl,
              onChanged: (value) {
                setState(() {
                  aiMl = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text("Web Development"),
              value: webDev,
              onChanged: (value) {
                setState(() {
                  webDev = value!;
                });
              },
            ),

            const SizedBox(height: 20),

            ElevatedButton(
  onPressed: () {
    String result = "";

    if (flutter) {
      result += "• Flutter Developer\n";
    }

    if (python) {
      result += "• Python Developer\n";
    }

    if (aiMl) {
      result += "• AI Engineer\n";
      result += "• Machine Learning Engineer\n";
    }

    if (webDev) {
      result += "• Full Stack Developer\n";
    }

    if (result.isEmpty) {
      result = "Please select at least one skill.";
    }

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Career Recommendations"),
        content: Text(result),
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
  child: const Text("Analyze Skills"),
),
          ],
        ),
      ),
    );
  }
}