import 'package:flutter/material.dart';
import '../../letter_button.dart';
import '../../models/part.dart';

/// Lesson: Short Vowel Marks — Kasrah
final part3 = Part(
  title: "3-qism — Qisqa unli belgilar: Kasra (ِ)",
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
            "Short Vowel Marks — Kasrah",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Text(
            "The /Kasrah/ (ـِ) is the short diagonal stroke written **below** a letter. "
            "It gives the letter a short ‘i’ sound (like the 'i' in 'sit'). "
            "Please click on the letters below to hear how they sound with the /Kasrah/ mark.",
            style: TextStyle(fontSize: 18, height: 1.4),
          ),

          const Divider(height: 32, thickness: 1),
          const Text(
            "Click on the letters to hear pronunciation:",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),

          // ✅ List of Arabic letters with kasrah
          Wrap(
            spacing: 8,
            runSpacing: 8,
            alignment: WrapAlignment.center,
            children: const [
              LetterButton(letter: "جِ", soundFile: "ji_kasrah.mp3"),
              LetterButton(letter: "ثِ", soundFile: "thi_kasrah.mp3"),
              LetterButton(letter: "تِ", soundFile: "ti_kasrah.mp3"),
              LetterButton(letter: "بِ", soundFile: "bi_kasrah.mp3"),
              LetterButton(letter: "إِ", soundFile: "alif_kasrah.mp3"),
              LetterButton(letter: "رِ", soundFile: "ri_kasrah.mp3"),
              LetterButton(letter: "ذِ", soundFile: "dhi_kasrah.mp3"),
              LetterButton(letter: "دِ", soundFile: "di_kasrah.mp3"),
              LetterButton(letter: "خِ", soundFile: "khi_kasrah.mp3"),
              LetterButton(letter: "حِ", soundFile: "hi_kasrah.mp3"),
              LetterButton(letter: "ضِ", soundFile: "diad_kasrah.mp3"),
              LetterButton(letter: "صِ", soundFile: "siad_kasrah.mp3"),
              LetterButton(letter: "شِ", soundFile: "shi_kasrah.mp3"),
              LetterButton(letter: "سِ", soundFile: "si_kasrah.mp3"),
              LetterButton(letter: "زِ", soundFile: "zi_kasrah.mp3"),
              LetterButton(letter: "فِ", soundFile: "fi_kasrah.mp3"),
              LetterButton(letter: "غِ", soundFile: "ghi_kasrah.mp3"),
              LetterButton(letter: "عِ", soundFile: "ai_kasrah.mp3"),
              LetterButton(letter: "ظِ", soundFile: "zhi_kasrah.mp3"),
              LetterButton(letter: "طِ", soundFile: "ti2_kasrah.mp3"),
              LetterButton(letter: "نِ", soundFile: "ni_kasrah.mp3"),
              LetterButton(letter: "مِ", soundFile: "mi_kasrah.mp3"),
              LetterButton(letter: "لِ", soundFile: "li_kasrah.mp3"),
              LetterButton(letter: "كِ", soundFile: "ki_kasrah.mp3"),
              LetterButton(letter: "قِ", soundFile: "qi_kasrah.mp3"),
              LetterButton(letter: "يِ", soundFile: "yi_kasrah.mp3"),
              LetterButton(letter: "وِ", soundFile: "wi_kasrah.mp3"),
              LetterButton(letter: "هِـ", soundFile: "hi2_kasrah.mp3"),
            ],
          ),

          const SizedBox(height: 32),
          const Text(
            "Each of these combinations shows a letter with the short vowel /i/ sound. "
            "For example: بِ = 'bi', تِ = 'ti', and so on.",
            style: TextStyle(fontSize: 18, height: 1.4),
          ),

          const Divider(height: 32, thickness: 1),
          const Text(
            "Practice Tip",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Text(
            "• Repeat each sound several times.\n"
            "• Notice the Kasrah is always written **below** the letter.\n"
            "• It always produces a short 'i' sound — never 'ee'.\n"
            "• Keep practicing daily to make your pronunciation natural.",
            style: TextStyle(fontSize: 18, height: 1.5),
          ),

          const SizedBox(height: 24),
          ElevatedButton.icon(
            onPressed: () {
              // TODO: implement play-all feature
            },
            icon: const Icon(Icons.volume_up),
            label: const Text("Play all Kasrah sounds"),
          ),
        ],
      ),
    ),
  ),
);
