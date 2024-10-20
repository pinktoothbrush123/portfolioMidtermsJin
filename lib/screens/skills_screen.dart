import 'package:flutter/material.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen width
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Skills"),
        backgroundColor: const Color.fromARGB(255, 193, 221, 230),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(157, 202, 235, 1),
              Color.fromARGB(255, 38, 158, 228)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: EdgeInsets.all(screenWidth * 0.04), // Responsive padding
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Jin's Skills",
              style: TextStyle(
                fontSize: screenWidth < 600 ? 20 : 24, // Responsive font size
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: screenWidth < 600 ? 1 : 2, // Responsive columns
                childAspectRatio: 1.5, // Aspect ratio for each tile
                children: [
                  _buildSkillCard(
                    icon: Icons.code,
                    skill: "Programming",
                    description: "Proficient in Dart, JavaScript, and Python",
                    color: Colors.blueAccent,
                  ),
                  _buildSkillCard(
                    icon: Icons.palette,
                    skill: "UI/UX Design",
                    description:
                        "Experienced in creating user-friendly interfaces",
                    color: Colors.pinkAccent,
                  ),
                  _buildSkillCard(
                    icon: Icons.storage,
                    skill: "Data Analysis",
                    description: "Skilled in analyzing data with Python and R",
                    color: Colors.greenAccent,
                  ),
                  _buildSkillCard(
                    icon: Icons.mobile_friendly,
                    skill: "Mobile Development",
                    description: "Expertise in building apps with Flutter",
                    color: Colors.orangeAccent,
                  ),
                  _buildSkillCard(
                    icon: Icons.web,
                    skill: "Web Development",
                    description:
                        "Experience with HTML, CSS, and JavaScript frameworks",
                    color: Colors.tealAccent,
                  ),
                  _buildSkillCard(
                    icon: Icons.chat,
                    skill: "Communication",
                    description:
                        "Strong verbal and written communication skills",
                    color: Colors.redAccent,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Method to build individual skill cards
  Widget _buildSkillCard({
    required IconData icon,
    required String skill,
    required String description,
    required Color color,
  }) {
    return Card(
      elevation: 8,
      margin: const EdgeInsets.all(8.0),
      color:
          color.withOpacity(0.8), // Card color with opacity for a softer look
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16), // Rounded corners
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: Colors.white), // Larger icon size
            const SizedBox(height: 10),
            Text(
              skill,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}
