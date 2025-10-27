import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const ArabicCourseApp());
}

class ArabicCourseApp extends StatelessWidget {
  const ArabicCourseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Amiri', // <- this is where you assign the Amiri font
        scaffoldBackgroundColor: Colors.grey.shade50,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
