import 'package:flutter/material.dart';
import '../models/course.dart';
import 'lesson_page.dart';

class LessonsListPage extends StatelessWidget {
  final Course course;

  const LessonsListPage({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          course.title,
          style: const TextStyle(fontFamily: 'Amiri'), // Arabic-style font
        ),
        centerTitle: true,
        backgroundColor: course.color.shade700,
        foregroundColor: Colors.white,
        elevation: 4,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: course.lessons.length,
          itemBuilder: (context, index) {
            final lesson = course.lessons[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => LessonPage(
                        courseColor: course.color,
                        lesson: lesson,
                      ),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        course.color.withOpacity(0.1),
                        course.color.withOpacity(0.05)
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: course.color.withOpacity(0.3),
                      width: 1.5,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: course.color.withOpacity(0.1),
                        blurRadius: 6,
                        offset: const Offset(2, 3),
                      ),
                    ],
                  ),
                  child: ListTile(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    leading: Icon(Icons.menu_book_rounded,
                        color: course.color, size: 32),
                    title: Text(
                      lesson.title,
                      style: TextStyle(
                        fontFamily: 'Amiri',
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: course.color.shade900,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,
                        color: course.color.shade700, size: 20),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
