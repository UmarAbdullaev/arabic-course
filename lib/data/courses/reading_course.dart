import 'package:arabic_course/palette.dart';
import 'package:flutter/material.dart';
import '../../models/course.dart';
import '../lessons/reading_lesson_1.dart';

final readingCourse = Course(
  title: "O‘qish kursi",
  icon: Icons.menu_book_rounded,
  color: arabicTeal,
  lessons: [lesson1],
);
