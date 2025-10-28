import 'package:flutter/material.dart';
import '../../models/part.dart';
import '../../letter_button.dart';

final part1 = Part(
  title: "1-qism — Arab alifbosi bilan tanishuv",
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
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Arab alifbosi — الأَبْجَدِيَّة الْعَرَبِيَّة",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Text(
            "Bu dars arab alifbosini o‘rganishga bag‘ishlangan. O‘qish arab tilidagi to‘rtta asosiy ko‘nikmadan biridir. "
            "Yangi o‘rganayotganlar uchun arab yozuvi chapdan o‘ngga yoziladigan tillardan farqli bo‘lgani uchun biroz qiyinchilik tug‘diradi.",
            style: TextStyle(fontSize: 18, height: 1.4),
          ),
          const SizedBox(height: 16),
          const Text(
            "Arab yozuvi juda aqlli lingvistik tizimlardan biridir — unda qisqa unli tovushlar, "
            "ikki harfli tovushlar va noaniq maqolalar yashirin bo‘ladi. Shuning uchun arab tili 50% dan ortiq qismini yashirgan bo‘lsa ham, "
            "hech qanday qisqartmalar yoki maxsus lug‘atlarga muhtoj emas.",
            style: TextStyle(fontSize: 18, height: 1.4),
          ),
          const SizedBox(height: 16),
          const Text(
            "Bu nozik jihatlarni o‘rganganingizdan so‘ng, siz uchun yangi so‘zlar va ifodalar dunyosi ochiladi. "
            "Oddiy bosqichlarni bajarsangiz, arab harflarini o‘qishni bir necha daqiqada o‘rganasiz, insha Alloh.",
            style: TextStyle(fontSize: 18, height: 1.4),
          ),

          const Divider(height: 32, thickness: 1),
          const Text(
            "Arab alifbosida nechta harf bor?",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Text(
            "Arab alifbosida 28 ta harf borligi keng tarqalgan fikrdir. Bu harflar zamonaviy va qadimgi lug‘atlarda tan olingan. "
            "Biroq ayrim olimlar Alif (ا) va Hamza (ء) alohida harfmi yoki yo‘qmi, degan masalada bahslashganlar.",
            style: TextStyle(fontSize: 18, height: 1.4),
          ),
          const SizedBox(height: 16),
          const Text(
            "• 1-fikr: Alif (ا) – Hamzaning shakli hisoblanadi. 28 ta harf mavjud.\n"
            "• 2-fikr: Alif (ا) – alohida harf bo‘lib, jami 29 ta harf bor.\n"
            "• 3-fikr: Alif (ا) va Hamza (ء) – harf emas, balki belgilardir. 28 ta harf mavjud.",
            style: TextStyle(fontSize: 18, height: 1.5),
          ),

          const Divider(height: 32, thickness: 1),
          const Text(
            "Arab alifbosi haqida kirish",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Text(
            "Ba’zi arab harflarining talaffuzi ingliz tilidagi tovushlarga o‘xshaydi, masalan: "
            "ب /bā’/ — ‘b’ tovushi. Lekin ayrim harflar inglizchada yo‘q: masalan, ع (/ʿayn/) yoki ح (/ħā’/).",
            style: TextStyle(fontSize: 18, height: 1.4),
          ),
          const SizedBox(height: 12),
          const Text(
            "Eslatma: arab yozuvi o‘ngdan chapga o‘qiladi. Quyidagi jadvaldagi harflarni o‘ngdan chapga qarab o‘qing:",
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 20),

          // ✅ Updated to use LetterButton with sound playback
          Wrap(
            spacing: 8,
            runSpacing: 8,
            alignment: WrapAlignment.center,
            children: const [
              LetterButton(letter: "ج", soundFile: "jeem.mp3"),
              LetterButton(letter: "ث", soundFile: "tha.mp3"),
              LetterButton(letter: "ت", soundFile: "taa.mp3"),
              LetterButton(letter: "ب", soundFile: "baa.mp3"),
              LetterButton(letter: "أ", soundFile: "alif.mp3"),
              LetterButton(letter: "ر", soundFile: "raa.mp3"),
              LetterButton(letter: "ذ", soundFile: "thal.mp3"),
              LetterButton(letter: "د", soundFile: "dal.mp3"),
              LetterButton(letter: "خ", soundFile: "khaa.mp3"),
              LetterButton(letter: "ح", soundFile: "haa.mp3"),
            ],
          ),

          const SizedBox(height: 24),
          const Text(
            "Keyingi darsda biz qisqa unli belgilarni (fatħa, kasra, ḍammah) o‘rganamiz, insha Alloh.",
            style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
          ),

          const Divider(height: 32, thickness: 1),
          const Text(
            "Qo‘shimcha ma’lumot",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Text(
            "Arab tili 28 ta harfni 19 ta shakl yordamida ifodalaydi, nuqtalar esa ularni farqlaydi (ب، ت، ث kabi). "
            "Qisqa unlilar harf emas, balki diakritik belgilar bo‘lib, ular harf ustida yoki ostida yoziladi.",
            style: TextStyle(fontSize: 18, height: 1.4),
          ),
          const SizedBox(height: 12),
          const Text(
            "Ko‘pchilik arab matnlarida bu belgilar yozilmaydi. Arablar so‘z konteksti orqali ularni aniqlaydilar. "
            "Ammo Qur’on va bolalar kitoblarida diakritik belgilar to‘liq yoziladi.",
            style: TextStyle(fontSize: 18, height: 1.4),
          ),

          const Divider(height: 32, thickness: 1),
          const Text(
            "Arab yozuvi tarixi va xattotlik",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Text(
            "Arab yozuvi milodiy 4-asrdan beri mavjud. Dastlab unda nuqtalar yo‘q edi. Keyinchalik musulmon bo‘lgan noturarab xalqlarga yordam berish uchun "
            "nuqtalar, diakritik belgilar va hamza kabi unsurlar qo‘shilgan.",
            style: TextStyle(fontSize: 18, height: 1.4),
          ),
          const SizedBox(height: 12),
          const Text(
            "Rasmlar chizish o‘rniga musulmon rassomlar arab xattotligiga e’tibor berishgan. "
            "Shuning uchun arab yozuvida juda go‘zal dekorativ uslublar shakllangan.",
            style: TextStyle(fontSize: 18, height: 1.4),
          ),

          const Divider(height: 32, thickness: 1),
          const Text(
            "Arabcha o‘qish bo‘yicha maslahatlar",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Text(
            "• Harflarni ovoz bilan talaffuz qiling\n"
            "• Avval bilgan harflaringizni mustahkamlang, keyin yangilarini o‘rganing\n"
            "• Ovoz chiqarib o‘qing va talaffuzni to‘g‘rilang\n"
            "• Har kuni mashq qiling — bir sahifani uch marta o‘qish uchta sahifani bir marta o‘qishdan foydaliroq",
            style: TextStyle(fontSize: 18, height: 1.5),
          ),

          const Divider(height: 32, thickness: 1),
          const Text(
            "Xulosa",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Text(
            "Arab tilida o‘qish dastlab qiyin ko‘rinsa ham, sabr bilan bu osonlashadi. "
            "Harflarning nomlarini eslab qoling — keyingi sahifalarda ular sizga kerak bo‘ladi. "
            "Agar tushunarsiz joylar bo‘lsa, o‘qituvchidan yoki manbadan so‘rang.",
            style: TextStyle(fontSize: 18, height: 1.4),
          ),

          const SizedBox(height: 24),
          
        ],
      ),
    ),
  ),
);
