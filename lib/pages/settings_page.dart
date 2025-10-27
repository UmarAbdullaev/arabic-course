import 'package:flutter/material.dart';
import '../palette.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isDarkMode = false;
  double fontSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sozlamalar',
          style: TextStyle(fontFamily: 'Amiri'),
        ),
        centerTitle: true,
        backgroundColor: arabicTeal.shade700,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Tungi rejim',
                  style: TextStyle(fontFamily: 'Amiri', fontSize: 18),
                ),
                Switch(
                  activeColor: arabicTeal.shade700,
                  value: isDarkMode,
                  onChanged: (value) {
                    setState(() => isDarkMode = value);
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Matn hajmi',
              style: TextStyle(fontFamily: 'Amiri', fontSize: 18),
            ),
            Slider(
              activeColor: arabicTeal.shade700,
              value: fontSize,
              min: 12,
              max: 24,
              divisions: 6,
              label: fontSize.round().toString(),
              onChanged: (value) {
                setState(() => fontSize = value);
              },
            ),
            const SizedBox(height: 30),
            Center(
              child: Text(
                'Sozlamalar hali saqlanmaydi (demo versiya)',
                style: TextStyle(
                  fontFamily: 'Amiri',
                  fontSize: 14,
                  color: Colors.grey.shade700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
