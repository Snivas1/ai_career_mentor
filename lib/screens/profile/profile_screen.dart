import 'package:flutter/material.dart';
import '../../models/user_profile.dart';
import '../dashboard/dashboard_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final collegeController = TextEditingController();
  final branchController = TextEditingController();
  final yearController = TextEditingController();
  final goalController = TextEditingController();
  @override
  void initState() {
    super.initState();

    nameController.text = UserProfile.name;
    emailController.text = UserProfile.email;
    phoneController.text = UserProfile.phone;
    collegeController.text = UserProfile.college;
    branchController.text = UserProfile.branch;
    yearController.text = UserProfile.year;
    goalController.text = UserProfile.careerGoal;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(radius: 50, child: Icon(Icons.person, size: 50)),

            const SizedBox(height: 20),

            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),

            TextField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                labelText: "Phone Number",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: collegeController,
              decoration: const InputDecoration(
                labelText: "College",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: branchController,
              decoration: const InputDecoration(
                labelText: "Branch",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: yearController,
              decoration: const InputDecoration(
                labelText: "Year",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: goalController,
              decoration: const InputDecoration(
                labelText: "Career Goal",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (nameController.text.trim().isEmpty ||
                      emailController.text.trim().isEmpty ||
                      phoneController.text.trim().isEmpty ||
                      collegeController.text.trim().isEmpty ||
                      branchController.text.trim().isEmpty ||
                      yearController.text.trim().isEmpty ||
                      goalController.text.trim().isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Please fill all fields")),
                    );
                    return;
                  }

                  if (!emailController.text.contains("@")) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Enter a valid email")),
                    );
                    return;
                  }

                  if (phoneController.text.length != 10) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Phone number must be 10 digits"),
                      ),
                    );
                    return;
                  }

                  if (int.tryParse(yearController.text) == null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Enter valid passing year")),
                    );
                    return;
                  }

                  UserProfile.name = nameController.text.trim();
                  UserProfile.email = emailController.text.trim();
                  UserProfile.phone = phoneController.text.trim();
                  UserProfile.college = collegeController.text.trim();
                  UserProfile.branch = branchController.text.trim();
                  UserProfile.year = yearController.text.trim();
                  UserProfile.careerGoal = goalController.text.trim();

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Profile Saved Successfully")),
                  );

                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DashboardScreen(),
                    ),
                    (route) => false,
                  );
                },
                child: const Text("Save Profile"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
