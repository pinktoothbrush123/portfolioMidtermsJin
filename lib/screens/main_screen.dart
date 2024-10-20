import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: const Color.fromARGB(255, 193, 221, 230),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Jin',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
        centerTitle: true,
        leading: MediaQuery.of(context).size.width < 600
            ? IconButton(
                icon: const Icon(Icons.menu, color: Colors.black),
                onPressed: () {
                  _scaffoldKey.currentState!.openDrawer();
                },
              )
            : null,
        actions: [
          if (MediaQuery.of(context).size.width > 600)
            Row(
              children:
                  ["Home", "About", "Skills", "Works", "Contact"].map((title) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/${title.toLowerCase()}');
                    },
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
        ],
      ),
      drawer: MediaQuery.of(context).size.width < 600
          ? Drawer(
              child: ListView(
                children: ["Home", "About", "Skills", "Works", "Contact"]
                    .map((title) {
                  return ListTile(
                    title: Text(title),
                    onTap: () {
                      // Close the drawer first
                      Navigator.pop(context);
                      // Delay the navigation slightly to allow drawer to close
                      Future.delayed(const Duration(milliseconds: 200), () {
                        Navigator.pushNamed(context, '/${title.toLowerCase()}');
                      });
                    },
                  );
                }).toList(),
              ),
            )
          : null,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Center(
            child: SizedBox(
              width: constraints.maxWidth > 1200
                  ? 800
                  : constraints.maxWidth * 0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.blue,
                    child: ClipOval(
                      child: Image.network(
                        'https://scontent.fmnl8-3.fna.fbcdn.net/v/t39.30808-6/302545493_5801467693220311_2099234316382158213_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=a5f93a&_nc_ohc=qXMJi8mQYdQQ7kNvgFQ3c76&_nc_zt=23&_nc_ht=scontent.fmnl8-3.fna&_nc_gid=ASSUcLWdF1WGGnnIX8HlMA4&oh=00_AYBL1JNabQ3f8CvzB9sR8lJV-Dc-wJ5DxHhQVMMKpB2JYw&oe=67183CDA',
                        fit: BoxFit.cover,
                        width: 150,
                        height: 150,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Hi,\nI'm ",
                          style: TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: "Jin",
                          style: TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Computer Science Student",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w300,
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/contact');
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 12),
                      backgroundColor: Colors.blueAccent,
                    ),
                    child: const Text(
                      "Contact",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.linkedin, size: 30),
                        onPressed: () {
                          // LinkedIn action
                        },
                      ),
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.behance, size: 30),
                        onPressed: () {
                          // Behance action
                        },
                      ),
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.github, size: 30),
                        onPressed: () {
                          // GitHub action
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
