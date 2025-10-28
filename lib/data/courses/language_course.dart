import 'package:arabic_course/palette.dart';
import 'package:flutter/material.dart';
import '../../models/course.dart';
import '../lessons/reading_lessons.dart';

final languageCourse = Course(
  title: "Til kursi",
  icon: Icons.menu_book_rounded,
  color: arabicBrown,
  lessons: [lesson1],
);
