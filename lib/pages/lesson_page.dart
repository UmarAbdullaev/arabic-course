import 'package:flutter/material.dart';
import '../models/lesson.dart';
import 'part_page.dart';

class LessonPage extends StatefulWidget {
  final Lesson lesson;
  final MaterialColor courseColor;

  const LessonPage({
    super.key,
    required this.lesson,
    required this.courseColor,
  });

  @override
  State<LessonPage> createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> {
  int currentPart = 0;

  @override
  Widget build(BuildContext context) {
    final parts = widget.lesson.parts;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.lesson.title,
          style: const TextStyle(fontFamily: 'Amiri'), // Arabic-style font
        ),
        centerTitle: true,
        backgroundColor: widget.courseColor.shade700,
        foregroundColor: Colors.white,
        elevation: 4,
      ),
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        transitionBuilder: (child, animation) =>
            FadeTransition(opacity: animation, child: child),
        child: Padding(
          key: ValueKey(currentPart),
          padding: const EdgeInsets.all(20),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: widget.courseColor.withOpacity(0.3),
                width: 1.5,
              ),
              boxShadow: [
                BoxShadow(
                  color: widget.courseColor.withOpacity(0.1),
                  blurRadius: 6,
                  offset: const Offset(2, 3),
                ),
              ],
            ),
            padding: const EdgeInsets.all(20),
            child: PartPage(part: parts[currentPart]),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade100,
        elevation: 12,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(parts.length, (index) {
              final isActive = index == currentPart;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isActive
                        ? widget.courseColor.shade600
                        : Colors.grey.shade300,
                    foregroundColor: isActive ? Colors.white : Colors.black87,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 18),
                    elevation: isActive ? 4 : 0,
                  ),
                  onPressed: () => setState(() => currentPart = index),
                  child: Text(
                    '${index + 1}',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Amiri', // Arabic-style font
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
