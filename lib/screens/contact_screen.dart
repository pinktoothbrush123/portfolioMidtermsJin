import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen width
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact"),
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
              Text(
                "Contact Jin",
                style: TextStyle(
                  fontSize: screenWidth < 600 ? 20 : 24, // Responsive font size
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              _buildContactInfoRow(Icons.email, "jin@gmail.com", Colors.blue),
              const SizedBox(height: 10),
              _buildContactInfoRow(Icons.phone, "+0915 093 6600", Colors.green),
              const SizedBox(height: 20),
              _buildSectionHeader("Send a Message:"),
              const SizedBox(height: 10),
              _buildTextField("Your Name"),
              const SizedBox(height: 10),
              _buildTextField("Your Email"),
              const SizedBox(height: 10),
              _buildTextField("Message", maxLines: 4),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add message submission logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(
                      255, 7, 110, 228), // Button background color
                  padding: const EdgeInsets.symmetric(
                      vertical: 16), // Button padding
                  textStyle: const TextStyle(fontSize: 18), // Button text style
                ),
                child: const Text("Send"),
              ),
              const SizedBox(height: 20),
              _buildSectionHeader("Connect with me on social media:"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _buildSocialMediaIcon(Icons.facebook, Colors.blue),
                  _buildSocialMediaIcon(
                      Icons.camera_alt, Colors.red), // Changed to camera icon
                  _buildSocialMediaIcon(Icons.link, Colors.blue),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Method to build contact info rows
  Widget _buildContactInfoRow(IconData icon, String info, Color color) {
    return Row(
      children: [
        Icon(icon, color: color),
        const SizedBox(width: 10),
        Text(
          info,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  // Method to build individual TextField
  Widget _buildTextField(String label, {int maxLines = 1}) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          contentPadding:
              const EdgeInsets.all(16), // Padding inside the text field
        ),
      ),
    );
  }

  // Method to build section header
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

  // Method to build individual IconButton for social media
  Widget _buildSocialMediaIcon(IconData icon, Color color) {
    return IconButton(
      icon: Icon(icon),
      color: color,
      iconSize: 30,
      onPressed: () {
        // Add profile link logic here
      },
    );
  }
}
