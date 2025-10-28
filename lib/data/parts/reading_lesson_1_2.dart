import 'package:flutter/material.dart';
import '../../models/part.dart';
import '../../letter_button.dart';

/// The new lesson: Short Vowel Marks - Fatħah
final part2 = Part(
  title: "2-qism — Qisqa unli belgilar: Fatħa (َ)",
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
            "Arabic Short Vowel-Marks Overview",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Text(
            "In Arabic, there are three short vowel marks. We shall learn the long vowel marks in a later lesson, In-Shā’-Allâh (God willing). "
            "The short vowel-marks enable the letter to make a sound in a similar way to the English vowels (a, e, i, o, u). "
            "In Arabic, one cannot form a proper word without a vowel being used.",
            style: TextStyle(fontSize: 18, height: 1.4),
          ),
          const SizedBox(height: 16),
          const Text(
            "In this lesson, we will learn the short vowel-mark called /Fatħah/ (ـَ), "
            "which is a small diagonal stroke written **above** a letter. Please click on each letter below to hear how it sounds with the /Fatħah/ applied.",
            style: TextStyle(fontSize: 18, height: 1.4),
          ),
          const SizedBox(height: 20),

          const Divider(height: 32, thickness: 1),
          const Text(
            "Click on the letters to hear pronunciation:",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),

          // ✅ List of Arabic letters with fatḥah
          Wrap(
            spacing: 8,
            runSpacing: 8,
            alignment: WrapAlignment.center,
            children: const [
              LetterButton(letter: "جَ", soundFile: "ja_fathah.mp3"),
              LetterButton(letter: "ثَ", soundFile: "tha_fathah.mp3"),
              LetterButton(letter: "تَ", soundFile: "ta_fathah.mp3"),
              LetterButton(letter: "بَ", soundFile: "ba_fathah.mp3"),
              LetterButton(letter: "أَ", soundFile: "alif_fathah.mp3"),
              LetterButton(letter: "رَ", soundFile: "ra_fathah.mp3"),
              LetterButton(letter: "ذَ", soundFile: "thal_fathah.mp3"),
              LetterButton(letter: "دَ", soundFile: "da_fathah.mp3"),
              LetterButton(letter: "خَ", soundFile: "kha_fathah.mp3"),
              LetterButton(letter: "حَ", soundFile: "ha_fathah.mp3"),
              LetterButton(letter: "ضَ", soundFile: "daad_fathah.mp3"),
              LetterButton(letter: "صَ", soundFile: "saad_fathah.mp3"),
              LetterButton(letter: "شَ", soundFile: "sha_fathah.mp3"),
              LetterButton(letter: "سَ", soundFile: "sa_fathah.mp3"),
              LetterButton(letter: "زَ", soundFile: "za_fathah.mp3"),
              LetterButton(letter: "فَ", soundFile: "fa_fathah.mp3"),
              LetterButton(letter: "غَ", soundFile: "gha_fathah.mp3"),
              LetterButton(letter: "عَ", soundFile: "ain_fathah.mp3"),
              LetterButton(letter: "ظَ", soundFile: "dha_fathah.mp3"),
              LetterButton(letter: "طَ", soundFile: "ta_fathah2.mp3"),
              LetterButton(letter: "نَ", soundFile: "na_fathah.mp3"),
              LetterButton(letter: "مَ", soundFile: "ma_fathah.mp3"),
              LetterButton(letter: "لَ", soundFile: "la_fathah.mp3"),
              LetterButton(letter: "كَ", soundFile: "ka_fathah.mp3"),
              LetterButton(letter: "قَ", soundFile: "qa_fathah.mp3"),
              LetterButton(letter: "يَ", soundFile: "ya_fathah.mp3"),
              LetterButton(letter: "وَ", soundFile: "wa_fathah.mp3"),
              LetterButton(letter: "هَـ", soundFile: "ha_fathah2.mp3"),
            ],
          ),

          const SizedBox(height: 32),
          const Text(
            "Each of these combinations represents a letter with the vowel /a/ sound, produced by the Fatħah mark. "
            "For example: بَ = 'ba', تَ = 'ta', and so on.",
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
            "• Try to imitate the native pronunciation.\n"
            "• Remember that Fatħah always gives the short 'a' sound — never 'aa'.\n"
            "• Listen and repeat daily for fluency.",
            style: TextStyle(fontSize: 18, height: 1.5),
          ),

          const SizedBox(height: 24),
        ],
      ),
    ),
  ),
);
