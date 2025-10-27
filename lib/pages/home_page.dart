import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../data/courses/reading_course.dart';
import '../data/courses/language_course.dart';
import '../palette.dart';
import 'lessons_list_page.dart';
import 'settings_page.dart';
import 'contact_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Future<void> _launchMadinahArabic() async {
    const url = 'https://www.madinaharabic.com/';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    final courses = [
      readingCourse,
      languageCourse,
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Arab tili kurslari",
          style: TextStyle(fontFamily: 'Amiri'),
        ),
        centerTitle: true,
        backgroundColor: arabicTeal.shade700,
        foregroundColor: Colors.white,
        elevation: 0,
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
            ),
          ),
        ],
      ),

      // Right-side drawer
      endDrawer: Drawer(
        backgroundColor: Colors.grey.shade50,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            bottomLeft: Radius.circular(25),
          ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: arabicTeal.shade700,
              ),
              child: Center(
                child: Text(
                  'Menyu',
                  style: TextStyle(
                    fontFamily: 'Amiri',
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Sozlamalar', style: TextStyle(fontFamily: 'Amiri')),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SettingsPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text('Aloqa / Maʼlumot', style: TextStyle(fontFamily: 'Amiri')),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ContactPage()),
                );
              },
            ),

          ],
        ),
      ),

      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 20,
                runSpacing: 20,
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
                          color: course.color.withOpacity(0.4),
                          width: 2,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: course.color.withOpacity(0.1),
                            blurRadius: 6,
                            offset: const Offset(2, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(course.icon,
                              size: 38, color: course.color.shade700),
                          const SizedBox(height: 8),
                          Text(
                            course.title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Amiri',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: course.color.shade900,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 40),
              Divider(color: Colors.grey.shade400, thickness: 1),
              const SizedBox(height: 10),
              Text.rich(
                TextSpan(
                  text: 'Ushbu kurs quyidagi manbadan olingan: ',
                  style: const TextStyle(fontFamily: 'Amiri', fontSize: 15),
                  children: [
                    WidgetSpan(
                      child: GestureDetector(
                        onTap: _launchMadinahArabic,
                        child: Text(
                          'madinaharabic.com',
                          style: TextStyle(
                            fontFamily: 'Amiri',
                            fontSize: 15,
                            color: arabicBrown.shade700,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
