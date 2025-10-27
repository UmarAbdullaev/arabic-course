import 'package:flutter/material.dart';
import 'lesson.dart';

class Course {
  final String title;
  final IconData icon;
  final MaterialColor color;
  final List<Lesson> lessons;

  Course({
    required this.title,
    required this.icon,
    required this.color,
    required this.lessons,
  });
}
