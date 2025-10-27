import 'package:flutter/material.dart';
import '../../models/part.dart';

final part1 = Part(
  title: "1-qism — Alif bilan tanishuv",
  content: Container(
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.05),
          blurRadius: 10,
          offset: const Offset(0, 4),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "ا — Alif",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        const Text(
          "Bu arab alifbosidagi birinchi harf. Alif uzun 'A' tovushini bildiradi.",
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 16),
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.volume_up),
          label: const Text("Talaffuzni eshitish"),
        ),
      ],
    ),
  ),
);
