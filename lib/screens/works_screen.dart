import 'package:flutter/material.dart';

class WorksScreen extends StatelessWidget {
  const WorksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen width
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Works"),
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
              "Jin's Works",
              style: TextStyle(
                fontSize: screenWidth < 600 ? 20 : 24, // Responsive font size
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  _buildCard(
                    icon: Icons.code,
                    title: "GitHub Profile",
                    url: "https://github.com/jin",
                  ),
                  const SizedBox(height: 10),
                  _buildCard(
                    icon: Icons.web,
                    title: "Personal Website",
                    url: "https://www.jinportfolio.com",
                  ),
                  const SizedBox(height: 10),
                  _buildCard(
                    icon: Icons.storage,
                    title: "My Thesis Project",
                    url: "https://github.com/jin/thesis-project",
                  ),
                  const SizedBox(height: 10),
                  _buildCard(
                    icon: Icons.android,
                    title: "Flutter Mobile App",
                    url: "https://github.com/jin/flutter-app",
                  ),
                  const SizedBox(height: 10),
                  _buildCard(
                    icon: Icons.photo,
                    title: "Photography Portfolio",
                    url: "https://www.instagram.com/jin",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Method to build individual work cards
  Widget _buildCard({
    required IconData icon,
    required String title,
    required String url,
  }) {
    return Card(
      elevation: 6,
      margin: const EdgeInsets.symmetric(vertical: 4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16), // Rounded corners
      ),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(icon, size: 40, color: Colors.blue), // Larger icon size
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    url,
                    style: const TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
