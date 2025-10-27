import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../palette.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  Future<void> _launchEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'support@arabicapp.uz',
      query: 'subject=Fikr-mulohaza',
    );
    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    }
  }

  Future<void> _launchTelegram() async {
    final Uri telegramUri = Uri.parse('https://t.me/arabicapp_support');
    if (await canLaunchUrl(telegramUri)) {
      await launchUrl(telegramUri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Aloqa / Maʼlumot',
          style: TextStyle(fontFamily: 'Amiri'),
        ),
        centerTitle: true,
        backgroundColor: arabicTeal.shade700,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Arab tili o‘quv dasturi',
              style: TextStyle(
                fontFamily: 'Amiri',
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Text(
              'Bu ilova arab tili o‘rganuvchilar uchun ishlab chiqilgan. Kurs mazmuni madinaharabic.com saytiga asoslangan.',
              style: const TextStyle(fontFamily: 'Amiri', fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            const Divider(),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: _launchEmail,
              icon: const Icon(Icons.email_outlined),
              label: const Text('Email orqali bog‘lanish'),
              style: ElevatedButton.styleFrom(
                backgroundColor: arabicTeal.shade700,
                foregroundColor: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: _launchTelegram,
              icon: const Icon(Icons.telegram),
              label: const Text('Telegram orqali yozish'),
              style: ElevatedButton.styleFrom(
                backgroundColor: arabicTeal.shade700,
                foregroundColor: Colors.white,
              ),
            ),
            const Spacer(),
            Text(
              '© 2025 Arabic Course App\nTuzuvchi: Umarxo‘ja Abdullayev',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Amiri',
                fontSize: 14,
                color: Colors.grey.shade700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
