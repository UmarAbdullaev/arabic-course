import 'package:arabic_course/palette.dart';
import 'package:flutter/material.dart';
import '../data/courses/reading_course.dart';
import '../data/courses/language_course.dart'; // example of another course
import 'lessons_list_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // List all courses here
    final courses = [
      readingCourse,
      languageCourse, // add more courses as needed
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Arab tili kurslari"),
        centerTitle: true,
        backgroundColor: arabicTeal.shade700,
        foregroundColor: Colors.white,
        elevation: 4,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 20, // horizontal spacing
            runSpacing: 20, // vertical spacing
            children: courses.map((course) {
              return InkWell(
                borderRadius: BorderRadius.circular(25),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => LessonsListPage(course: course),
                    ),
                  );
                },
                child: Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: LinearGradient(
                      colors: [
                        course.color.withOpacity(0.2),
                        course.color.withOpacity(0.05),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    border: Border.all(
                      color: course.color.withOpacity(0.5),
                      width: 2,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: course.color.withOpacity(0.15),
                        blurRadius: 10,
                        offset: const Offset(3, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(course.icon, size: 38, color: course.color.shade700),
                      const SizedBox(height: 8),
                      Text(
                        course.title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Amiri', // Arabic-like font
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: course.color.shade900,
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 2,
                              offset: const Offset(1, 1),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
