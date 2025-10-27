import 'package:flutter/material.dart';
import '../models/part.dart';

class PartPage extends StatelessWidget {
  final Part part;

  const PartPage({super.key, required this.part});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            part.title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: 'Amiri', // Arabic-style font
            ),
          ),
          const SizedBox(height: 16),
          part.content, // Any widget you want to insert here
        ],
      ),
    );
  }
}
