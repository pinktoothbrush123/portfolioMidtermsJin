import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen width
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("About"),
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile picture
              const Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    'https://scontent.fmnl8-3.fna.fbcdn.net/v/t39.30808-6/302545493_5801467693220311_2099234316382158213_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=a5f93a&_nc_ohc=qXMJi8mQYdQQ7kNvgFQ3c76&_nc_zt=23&_nc_ht=scontent.fmnl8-3.fna&_nc_gid=ASSUcLWdF1WGGnnIX8HlMA4&oh=00_AYBL1JNabQ3f8CvzB9sR8lJV-Dc-wJ5DxHhQVMMKpB2JYw&oe=67183CDA', // Use your own image URL
                  ),
                ),
              ),

              const SizedBox(height: 20),
              Text(
                "About Jin",
                style: TextStyle(
                  fontSize: screenWidth < 600 ? 20 : 24, // Responsive font size
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              _buildCard(
                context,
                "Hello! I'm Jin, a passionate developer with experience in building mobile and web applications. I enjoy creating intuitive and dynamic user experiences, and I love working with the latest technologies to bring ideas to life.",
              ),
              const SizedBox(height: 20),
              _buildSectionHeader("Background"),
              _buildCard(
                context,
                "I have a background in computer science and have worked on various projects, from mobile apps to web applications. I am proficient in Dart, JavaScript, and Python, and I have a keen interest in UI/UX design.",
              ),
              const SizedBox(height: 20),
              _buildSectionHeader("Interests"),
              _buildCard(
                context,
                "In my free time, I enjoy exploring new technologies, contributing to open-source projects, and engaging with the developer community. I also have a passion for photography and love capturing moments through my lens.",
              ),
              const SizedBox(height: 20),
              _buildSectionHeader("Let's Connect!"),
              _buildCard(
                context,
                "Feel free to reach out to me through my social media or via email. I'm always open to discussing new projects, ideas, or collaborations.",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context, String content) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8),
      color: Colors.white.withOpacity(0.9),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          content,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
