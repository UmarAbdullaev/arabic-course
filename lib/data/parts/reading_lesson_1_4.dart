import 'package:flutter/material.dart';
import '../../models/part.dart';
import '../../letter_button.dart';

/// Lesson: Short Vowel Marks — Ḍammah
final part4 = Part(
  title: "4-qism — Qisqa unli belgilar: Ḍamma (ُ)",
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
            "Short Vowel Marks — Ḍammah",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Text(
            "The /Ḍammah/ (ـُ) is a small curl or loop, similar in shape to the Arabic letter **wāw (و)**, "
            "and it is written **above** a letter. It produces a short ‘u’ sound (like the 'u' in 'put'). "
            "Please click on the letters below to hear how they sound with the /Ḍammah/ mark.",
            style: TextStyle(fontSize: 18, height: 1.4),
          ),

          const Divider(height: 32, thickness: 1),
          const Text(
            "Click on the letters to hear pronunciation:",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),

          // ✅ List of Arabic letters with Ḍammah
          Wrap(
            spacing: 8,
            runSpacing: 8,
            alignment: WrapAlignment.center,
            children: const [
              LetterButton(letter: "جُ", soundFile: "ju_dammah.mp3"),
              LetterButton(letter: "ثُ", soundFile: "thu_dammah.mp3"),
              LetterButton(letter: "تُ", soundFile: "tu_dammah.mp3"),
              LetterButton(letter: "بُ", soundFile: "bu_dammah.mp3"),
              LetterButton(letter: "أُ", soundFile: "alif_dammah.mp3"),
              LetterButton(letter: "رُ", soundFile: "ru_dammah.mp3"),
              LetterButton(letter: "ذُ", soundFile: "dhu_dammah.mp3"),
              LetterButton(letter: "دُ", soundFile: "du_dammah.mp3"),
              LetterButton(letter: "خُ", soundFile: "khu_dammah.mp3"),
              LetterButton(letter: "حُ", soundFile: "hu_dammah.mp3"),
              LetterButton(letter: "ضُ", soundFile: "duad_dammah.mp3"),
              LetterButton(letter: "صُ", soundFile: "suad_dammah.mp3"),
              LetterButton(letter: "شُ", soundFile: "shu_dammah.mp3"),
              LetterButton(letter: "سُ", soundFile: "su_dammah.mp3"),
              LetterButton(letter: "زُ", soundFile: "zu_dammah.mp3"),
              LetterButton(letter: "فُ", soundFile: "fu_dammah.mp3"),
              LetterButton(letter: "غُ", soundFile: "ghu_dammah.mp3"),
              LetterButton(letter: "عُ", soundFile: "au_dammah.mp3"),
              LetterButton(letter: "ظُ", soundFile: "zhu_dammah.mp3"),
              LetterButton(letter: "طُ", soundFile: "tu2_dammah.mp3"),
              LetterButton(letter: "نُ", soundFile: "nu_dammah.mp3"),
              LetterButton(letter: "مُ", soundFile: "mu_dammah.mp3"),
              LetterButton(letter: "لُ", soundFile: "lu_dammah.mp3"),
              LetterButton(letter: "كُ", soundFile: "ku_dammah.mp3"),
              LetterButton(letter: "قُ", soundFile: "qu_dammah.mp3"),
              LetterButton(letter: "يُ", soundFile: "yu_dammah.mp3"),
              LetterButton(letter: "وُ", soundFile: "wu_dammah.mp3"),
              LetterButton(letter: "هُـ", soundFile: "hu2_dammah.mp3"),
            ],
          ),

          const SizedBox(height: 32),
          const Text(
            "Each combination here shows a letter with the short vowel /u/ sound produced by the Ḍammah mark. "
            "For example: بُ = 'bu', تُ = 'tu', and so on.",
            style: TextStyle(fontSize: 18, height: 1.4),
          ),

          const Divider(height: 32, thickness: 1),
          const Text(
            "Practice Tip",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Text(
            "• The Ḍammah mark always appears **above** the letter.\n"
            "• It produces a short ‘u’ sound — not ‘oo’.\n"
            "• Repeat each sound several times for fluency.\n"
            "• Combine this with previous lessons (Fatħah & Kasrah) for full short-vowel mastery.",
            style: TextStyle(fontSize: 18, height: 1.5),
          ),

          const SizedBox(height: 24),
          ElevatedButton.icon(
            onPressed: () {
              // TODO: implement "Play All" functionality
            },
            icon: const Icon(Icons.volume_up),
            label: const Text("Play all Ḍammah sounds"),
          ),
        ],
      ),
    ),
  ),
);
