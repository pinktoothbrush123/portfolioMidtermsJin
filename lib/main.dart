import 'package:flutter/material.dart';
import 'screens/about_screen.dart';
import 'screens/contact_screen.dart';
import 'screens/skills_screen.dart';
import 'screens/works_screen.dart';
import 'screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jin Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      routes: {
        '/': (context) => MainScreen(),
        '/about': (context) => const AboutScreen(),
        '/skills': (context) => const SkillsScreen(),
        '/works': (context) => const WorksScreen(),
        '/contact': (context) => const ContactScreen(),
      },
      initialRoute: '/',
    );
  }
}
